import 'package:bookme_mobile/api/dio/dio_singleton.dart';
import 'package:bookme_mobile/utils/config/config.dart';
import 'package:dio/dio.dart';

abstract class BaseController {

  String get baseUrl => appConfig.baseUrl;

  final Dio authDio = DioSingleton().authDio;
  final Dio withoutAuthDio = DioSingleton().withoutAuthDio;

}