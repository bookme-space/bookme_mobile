import 'package:bookme_mobile/features/auth/login/utils/form_controller.dart';
import 'package:bookme_mobile/utils/constants/routes_keys.dart';
import 'package:bookme_mobile/widgets/input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  LoginFormController formController = Get.put(LoginFormController());

  void handleRedirectToRegisterPage (BuildContext context) =>
      context.go(RoutesKeys.registration);

  void handleRedirectToHome (BuildContext context) {
    context.go(RoutesKeys.home);
  }

  void handleSubmit (BuildContext context) async {
    final isSuccess = await formController.submit();
    print("ISSUCESSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS_______$isSuccess");
    if(isSuccess) handleRedirectToRegisterPage(context);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:
            Center(
              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 124,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/logo.png',
                        ),
                        fit: BoxFit.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 100),
                  Input(hint: "Email", controller: formController.email),
                  const SizedBox(height: 20),
                  Input(hint: "Password", controller: formController.password, obscureText: true),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: ElevatedButton.icon(
                        onPressed: () => handleSubmit(context),
                        icon: formController.isLoading.isTrue
                            ? const CircularProgressIndicator(color: Colors.black)
                            : const Icon(Icons.login,color: Colors.black),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.yellow),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                        ),
                        label: const Text("Login", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 15))
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      const Text("Is this your first time here?", style: TextStyle(color: Colors.grey, fontSize: 18)),
                      TextButton(
                          onPressed: () => handleRedirectToRegisterPage(context),
                          child: const Text("Register", style: TextStyle(fontSize: 18))
                      )
                    ]
                  )
                ],
              ),
            )
        )
      );
  }
}
