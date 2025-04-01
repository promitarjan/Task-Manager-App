// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:task_manager_new/style/background.dart';
import 'package:task_manager_new/utility/widget.dart';

class pinVerification extends StatefulWidget {
  const pinVerification({super.key});

  @override
  State<pinVerification> createState() => _pinVerificationState();
}

class _pinVerificationState extends State<pinVerification> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Background(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: pinVerificationElements(),
          ),
        ),
      ),
    );
  }
}
