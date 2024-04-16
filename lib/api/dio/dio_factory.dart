import 'package:bookme_mobile/api/dio/auth_queued_interceptor.dart';
import 'package:bookme_mobile/utils/config/config.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DioFactory {

  static const String applicationJson = 'application/json';
  static String baseUrl = appConfig.baseUrl;

  static Dio _getDioWithoutInterceptors() {
    final dio = Dio();

    final headers = <String, String>{
      'Content-Type': applicationJson,
      'accept': applicationJson,
    };

    dio.options = BaseOptions(
      baseUrl: baseUrl,
      headers: headers,
    );

    return dio;
  }

  static Dio getWithoutAuthDio() {
    final dio = _getDioWithoutInterceptors();

    if (kDebugMode) {
      dio.interceptors.add(
        LogInterceptor(),
      );
    }

    return dio;
  }

  static Dio getAuthDio() {
    final dio = _getDioWithoutInterceptors();

    dio.interceptors.addAll([
      AuthQueuedInterceptor(),
    ]);

    if (kDebugMode) {
      dio.interceptors.add(
        LogInterceptor(),
      );
    }

    return dio;
  }
}
