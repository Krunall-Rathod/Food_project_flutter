import 'package:clg_project/pages/Register_page.dart';
// import 'package:clg_project/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:clg_project/login_page.dart';

class LoginOrRegister extends StatefulWidget {
  LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  //initially show login page
  bool showLoginPage = true;

//toggle between login and  register page
  void togglepage() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return Loginport(
        onTap: togglepage,
      );
    } else {
      return RegisterPage(
        onTap: togglepage,
      );
    }
  }
}
