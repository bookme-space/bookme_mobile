import 'package:bookme_mobile/dto/auth/login/login_dto.dart';
import 'package:bookme_mobile/repositories/auth_repository.dart';
import 'package:bookme_mobile/utils/toast/toast.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class LoginFormController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  RxBool isLoading = false.obs;

  Future<bool> submit() async {
    isLoading(true);
    update();
    try {
      if(validate()) {
        await authRepository.login(LoginDto(email: email.text, password: password.text));
        return true;
      }
    } on DioException catch (error) {
      if(error.response?.statusCode == 400) {
        Toast.error("Email must be an email format");
      }
      if(error.response?.statusCode == 500) {
        Toast.error("Incorrect email or password");
      }
    } catch (e) {
      Toast.error("Something went wrong...");
    }
    isLoading(false);
    update();
    return false;
  }

  bool validate() {

    if(email.text.isEmpty || password.text.isEmpty) {
      Toast.error("Email and Password is required fields");
      return false;
    }

    return true;
  }

}