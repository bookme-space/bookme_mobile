import 'package:bookme_mobile/dto/auth/register/register_dto.dart';
import 'package:bookme_mobile/repositories/auth_repository.dart';
import 'package:bookme_mobile/utils/toast/toast.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RegistrationFormController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController password = TextEditingController();

  RxBool isLoading = false.obs;


  Future<bool> submit() async {
    isLoading(true);
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
    return false;
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