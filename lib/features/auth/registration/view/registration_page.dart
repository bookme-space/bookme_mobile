import 'package:bookme_mobile/features/auth/registration/utils/form_controller.dart';
import 'package:bookme_mobile/utils/constants/routes_keys.dart';
import 'package:bookme_mobile/widgets/input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

  RegistrationFormController formController = Get.put(RegistrationFormController());

  void handleRedirectToLoginPage (BuildContext context) =>
      context.go(RoutesKeys.login);

  void handleRedirectToHome (BuildContext context) {
    context.go(RoutesKeys.home);
  }

  void handleSubmit (BuildContext context) async {
    final isSuccess = await formController.submit();
    if(isSuccess) handleRedirectToHome(context);
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
                        height: 110,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/logo.png',
                            ),
                            fit: BoxFit.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      Input(hint: "Email", controller: formController.email),
                      const SizedBox(height: 20),
                      Input(hint: "Firstname", controller: formController.firstname),
                      const SizedBox(height: 20),
                      Input(hint: "Lastname", controller: formController.lastname),
                      const SizedBox(height: 20),
                      Input(hint: "Password", controller: formController.password, obscureText: true),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 200,
                        height: 50,
                        child: ElevatedButton.icon(
                            onPressed: () => handleSubmit(context),
                            icon: formController.isLoading.isTrue
                                ? const CircularProgressIndicator(color: Colors.black)
                                : const Icon(Icons.login, color: Colors.black,),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.yellow),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                            label: const Text("Register", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 15))
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                        const Text("Already account exist?", style: TextStyle(color: Colors.grey, fontSize: 17, fontWeight: FontWeight.w400)),
                        TextButton(
                            onPressed: () => handleRedirectToLoginPage(context),
                            child: const Text("Login", style: TextStyle(fontSize: 18))
                        )
                      ])
                    ],
                  ),
                )
        )
    );
  }
}
