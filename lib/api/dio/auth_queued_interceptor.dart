import 'package:bookme_mobile/api/dio/jwt_token_pair.dart';
import 'package:bookme_mobile/dto/identity/token_data/token_data_dto.dart';
import 'package:bookme_mobile/main.dart';
import 'package:bookme_mobile/utils/config/config.dart';
import 'package:bookme_mobile/utils/data_providers/secure_storage/jwt_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AuthQueuedInterceptor extends QueuedInterceptor {
  late final Dio _dio;
  final _jwtTokenRepository = JwtTokenSecureStorageProvider();

  AuthQueuedInterceptor() {
    _dio = Dio();
    if (kDebugMode) {
      _dio.interceptors.addAll([
        LogInterceptor(),
      ]);
    }
  }

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    // if (options.headers['requiresToken'] == false) {
    //   // Если запросу не нужен токен, происходит переход к следующему перехватчику.
    //   options.headers.remove('requiresToken'); // Удаление заголовка.
    //   return handler.next(options);
    // }

    final jwtTokenPair = await _jwtTokenRepository.getJwtTokenPair();

    if (jwtTokenPair == null) {
      await _performLogout();

      // Создание кастомной ошибки dio.
      options.extra['tokenErrorType'] = 'ERR_TOKEN_NOT_FOUND_IN_LOCAL_STORAGE';
      final error = DioException(requestOptions: options);
      return handler.reject(error);
    }

    print("!@@@@@@@@@@@@@@@@@@@@@@@@@@@@!#__${jwtTokenPair.hasExpired() == false}");

    // Проверка, истёк ли срок действия токена или нет.
    if (jwtTokenPair.hasExpired() != false) {
      // Добавление access token в заголовок запроса.
      options.headers['Authorization'] = 'Bearer ${jwtTokenPair.accessToken}';
      return handler.next(options);
    }

    // Обновление access token.
    final refreshedJwtTokenPair = await _getRefreshedJwtTokenPair();

    print("!!!!!!!!!!!!!!!!!!!!!!!!!!!#__${refreshedJwtTokenPair != null}");
    if (refreshedJwtTokenPair != null) {
      await _jwtTokenRepository.setJwtTokenPair(refreshedJwtTokenPair);

      // Добавление access token в заголовок запроса.
      options.headers['Authorization'] = 'Bearer ${refreshedJwtTokenPair.accessToken}';
      options.headers.remove('requiresToken'); // Удаление заголовка.
      return handler.next(options);
    } else {
      // Создание кастомной ошибки dio.
      options.extra['tokenErrorType'] = 'ERR_UPDATE_ACCESS_TOKEN_FAILED';
      final error = DioException(requestOptions: options);
      return handler.reject(error);
    }
  }

  @override
  Future<void> onError(DioException err, ErrorInterceptorHandler handler) async {
    final statusCode = err.response?.statusCode;
    if (statusCode == 401) {
      // Если при обновлении токена произошла ошибка, необходимо разлогинить пользователя.
      await _performLogout();

      // Создание кастомной ошибки dio.
      err.requestOptions.extra['tokenErrorType'] = 'ERR_INVALID_ACCESS_TOKEN';
    }

    return handler.next(err);
  }

  Future<void> _performLogout() async {
    // Удаление из БД.
    await _jwtTokenRepository.deleteJwtTokenPair();

    final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

    // Возврат на страницу логина без context.
    // https://stackoverflow.com/a/53397266/9101876
    await navigatorKey.currentState?.pushAndRemoveUntil(
      MaterialPageRoute<void>(builder: (context) => const MyHomePage(title: "Refresh auth failed")),
          (route) => false,
    );
  }

  /// Возвращает TokenData, если access token успешно обновлён.
  Future<JwtTokenPair?> _getRefreshedJwtTokenPair() async {
    try {
      // Получение токенов из БД.
      final jwtTokenPair = await _jwtTokenRepository.getJwtTokenPair();

      if (jwtTokenPair == null) {
        return null;
      }
      print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
      // Отправка запроса для обнавления access token.
      final response = await _dio.post<Map<String, dynamic>>(
        '${appConfig.baseUrl}/auth/refresh',
        options: Options(
          headers: <String, dynamic>{
            'Authorization' : 'Bearer ${jwtTokenPair.accessToken}',
            'accept' : 'application/json',
          },
        ),
        data: {'refresh' : jwtTokenPair.refreshToken},
      );

      var tokenData = response.data!['tokenData'] as Map<String, dynamic>;
      final dto = TokenDataDto.fromJson(tokenData);
      return JwtTokenPair.fromDto(dto: dto);
    } on DioException catch (dioError) {
      if (dioError.response != null) {
        print("@@@@@@@@@@@@@@@@@@@@@@@@@@");
        final statusCode = dioError.response!.statusCode;
        if (statusCode == 401 /*|| statusCode == 403*/) {
          await _performLogout();
          return null;
        } else {
          if (kDebugMode) {
            print(dioError.response!.statusCode);
          }
          return null;
        }
      }
      return null;
    } catch (e) {
      print("@@@@@@@@@@@@@@@@@@@@@@@@@@");
      return null;
    }
  }
}
