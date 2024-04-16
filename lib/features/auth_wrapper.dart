import 'package:bookme_mobile/features/auth/login/view/login_page.dart';
import 'package:bookme_mobile/features/home/view/home_page.dart';
import 'package:bookme_mobile/utils/helpers/is_auth.dart';
import 'package:flutter/material.dart';

class AuthWrapper extends StatefulWidget {
  const AuthWrapper({super.key});

  @override
  State<AuthWrapper> createState() => _LandingPageState();
}

class _LandingPageState extends State<AuthWrapper> {

  bool isCheckingAuth = true;
  bool? isAuth;

  void checkAuth () async {
    CheckAuthHelper.isAuth
        .then((isAuth) => setState(() => this.isAuth = isAuth))
        .whenComplete(() => isCheckingAuth = false);
  }

  @override
  void initState() {
    super.initState();
    checkAuth();
  }

  @override
  Widget build(BuildContext context) {

    if(isCheckingAuth) {
      return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 64),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
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
                const CircularProgressIndicator(),
              ],
            ),
          ),
        ),
      );
    }

    return isAuth == false ? const LoginPage() : const HomePage();
  }
}
