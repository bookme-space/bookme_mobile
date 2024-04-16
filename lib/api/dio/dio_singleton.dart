import 'package:bookme_mobile/api/dio/dio_factory.dart';

class DioSingleton {
  static final DioSingleton _singleton = DioSingleton._internal();

  factory DioSingleton() {
    return _singleton;
  }

  final authDio = DioFactory.getAuthDio();

  final withoutAuthDio = DioFactory.getWithoutAuthDio();

  DioSingleton._internal();
}
