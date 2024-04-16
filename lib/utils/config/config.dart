import 'package:flutter_dotenv/flutter_dotenv.dart';

mixin IConfig {
  String get baseUrl;
}


class Config implements IConfig {

  @override
  String get baseUrl => 'http://localhost:8080/api';

  _readString(String key, {String? defaultValue}) async {
    final String result = dotenv.get('CLIENT_SECRET');
    if(result == "" && defaultValue == null) {
        throw Exception("Cannot read environment variable $key");
    }
    return result;
  }
}

final appConfig = Config();