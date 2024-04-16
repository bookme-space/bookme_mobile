import 'package:bookme_mobile/api/dio/jwt_token_pair.dart';
import 'package:bookme_mobile/utils/constants/storage_keys.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class JwtTokenSecureStorageProvider {
  static const FlutterSecureStorage _secureStorage = FlutterSecureStorage();

  Future<JwtTokenPair?> getJwtTokenPair() async {
    final accessToken = await _secureStorage.read(key: StorageKeys.accessToken);
    final refreshToken = await _secureStorage.read(key: StorageKeys.refreshToken);
    final expiresInString = await _secureStorage.read(key: StorageKeys.expiresIn);
    final expiresIn = expiresInString != null ? int.parse(expiresInString) : null;

    if (accessToken == null || refreshToken == null || expiresIn == null) {
      return null;
    }

    return JwtTokenPair(
        accessToken: accessToken,
        refreshToken: refreshToken,
        expiresIn: DateTime.fromMillisecondsSinceEpoch(expiresIn)
    );
  }

  Future<void> setJwtTokenPair(JwtTokenPair jwtTokenPair) async {
    await _secureStorage.write(
      key: StorageKeys.accessToken,
      value: jwtTokenPair.accessToken,
    );
    await _secureStorage.write(
      key: StorageKeys.refreshToken,
      value: jwtTokenPair.refreshToken,
    );
    await _secureStorage.write(
      key: StorageKeys.expiresIn,
      value: jwtTokenPair.expiresIn.millisecondsSinceEpoch.toString(),
    );
  }

  Future<void> deleteJwtTokenPair() async {
    await _secureStorage.delete(key: StorageKeys.accessToken);
    await _secureStorage.delete(key: StorageKeys.refreshToken);
    await _secureStorage.delete(key: StorageKeys.expiresIn);
  }
}
