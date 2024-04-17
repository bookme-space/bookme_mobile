

import 'package:bookme_mobile/utils/data_providers/secure_storage/jwt_provider.dart';

class CheckAuthHelper {

  static final JwtTokenSecureStorageProvider _jwtProvider = JwtTokenSecureStorageProvider();

  static Future<bool> get isAuth async {
    final dto = await _jwtProvider.getJwtTokenPair();

    if(dto != null) {
      return true;
    }
    return false;
  }

  //TODO: implement refreshing if refresh token is defined
}