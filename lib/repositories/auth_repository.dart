
import 'package:bookme_mobile/api/api.dart';
import 'package:bookme_mobile/api/dio/jwt_token_pair.dart';
import 'package:bookme_mobile/dto/auth/login/login_dto.dart';
import 'package:bookme_mobile/dto/auth/register/register_dto.dart';
import 'package:bookme_mobile/dto/identity/auth/auth_dto.dart';
import 'package:bookme_mobile/utils/data_providers/secure_storage/jwt_provider.dart';

class AuthRepository {

  Future<AuthDto> login(LoginDto dto) async {
    final response = await api.auth.login(dto);
    await JwtTokenSecureStorageProvider()
        .setJwtTokenPair(JwtTokenPair.fromDto(dto: response.tokenData));
    return response;
  }

  Future<AuthDto> register(RegisterDto dto) async {
    final response = await api.auth.register(dto);
    await JwtTokenSecureStorageProvider()
        .setJwtTokenPair(JwtTokenPair.fromDto(dto: response.tokenData));
    return response;
  }
}

final authRepository = AuthRepository();