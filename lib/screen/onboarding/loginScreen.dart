// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:task_manager_new/screen/onboarding/emailVerificationScreen.dart';
import 'package:task_manager_new/screen/onboarding/registrationScreen.dart';

import 'package:task_manager_new/style/background.dart';
import 'package:task_manager_new/utility/widget.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  void _navigateTonewTaskScreen(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const Navigation()),
      (route) => false,
    );
  }

  void _navigateToEmailVerificationScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const emailVerification()),
    );
  }

  void _navigateToRegistrationScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const registrationScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Background(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: allElements(
              height: height,
              width: width,
              onLoginPressed: () => _navigateTonewTaskScreen(context),
              onForgetPasswordPressed:
                  () => _navigateToEmailVerificationScreen(context),
              onSignUpPressed: () => _navigateToRegistrationScreen(context),
            ),
          ),
        ),
      ),
    );
  }
}
