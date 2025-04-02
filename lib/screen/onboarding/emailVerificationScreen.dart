// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:task_manager_new/style/background.dart';
import 'package:task_manager_new/utility/widgets/verification_elements.dart';

class emailVerification extends StatefulWidget {
  const emailVerification({super.key});

  @override
  State<emailVerification> createState() => _emailVerificationState();
}

class _emailVerificationState extends State<emailVerification> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Background(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: verificationElements(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
          ),
        ),
      ),
    );
  }
}
