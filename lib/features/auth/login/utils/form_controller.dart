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


  Future<void> submit() async {
    try {
      if(validate()) {
        print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
        await authRepository.login(LoginDto(email: email.text, password: password.text));
        print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
      }
    } on DioException catch (error) {
      if(error.response?.statusCode == 500) {
        Toast.error("Incorrect email or password");
      }
    } catch (e) {
      Toast.error("Something went wrong...");
    }
  }

  bool validate() {

    if(email.text.isEmpty || password.text.isEmpty) {
      Toast.error("Email and Password is required fields");
      return false;
    }

    return true;
  }

}