import 'package:bookme_mobile/dto/auth/register/register_dto.dart';
import 'package:bookme_mobile/repositories/auth_repository.dart';
import 'package:bookme_mobile/utils/toast/toast.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class RegistrationFormController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController password = TextEditingController();


  Future<void> submit() async {
    try {
      if(validate()) {
        await authRepository.register(
            RegisterDto(
                email: email.text,
                password: password.text,
                firstname: firstname.text,
                lastname: lastname.text
            )
        );
      }
    } on DioException catch (error) {
      Toast.error("Incorrect email or password");
    } catch (e) {
      Toast.error("Something went wrong...");
    }
  }

  bool validate() {
    if(
      email.text.isEmpty
          || password.text.isEmpty
          || firstname.text.isEmpty
          || lastname.text.isEmpty
    ) {
      Toast.error("Email, Password, Firstname, Lastname is required fields");
      return false;
    }

    return false;
  }
}