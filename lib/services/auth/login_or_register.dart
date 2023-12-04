import 'package:flutter/material.dart';
import 'package:message_app/Pages/login_page.dart';
import 'package:message_app/Pages/register_page.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
// initially show login screen
  bool showLoginPage = true;

  // toogle betwwen login or register page
  void tooglePage() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(onTap: tooglePage);
    } else {
      return RegisterPage(onTap: tooglePage);
    }
  }
}
