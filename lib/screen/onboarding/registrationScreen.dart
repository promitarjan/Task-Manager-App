// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:task_manager_new/style/background.dart';
import 'package:task_manager_new/utility/widgets/reg_screen_elements.dart';

class registrationScreen extends StatefulWidget {
  const registrationScreen({super.key});

  @override
  State<registrationScreen> createState() => _registrationScreenState();
}

class _registrationScreenState extends State<registrationScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        // Allow form to scroll
        body: SafeArea(
          // Prevent background squeezing
          child: Background(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: regScreenElements(height: height, width: width),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
