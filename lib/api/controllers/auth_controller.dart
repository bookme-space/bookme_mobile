
import 'package:bookme_mobile/api/controllers/base/base_controller.dart';
import 'package:bookme_mobile/dto/auth/login/login_dto.dart';
import 'package:bookme_mobile/dto/auth/register/register_dto.dart';
import 'package:bookme_mobile/dto/identity/auth/auth_dto.dart';

class AuthController extends BaseController {

  Future<AuthDto> login(LoginDto dto) async {
    final response = await super.withoutAuthDio.post('/auth/login', data: dto);
    return AuthDto.fromJson(response.data);
  }

  Future<AuthDto> register(RegisterDto dto) async {
    final response = await super.withoutAuthDio.post(
        '/auth/register',
      data: dto
    );
    return AuthDto.fromJson(response.data);
  }

}