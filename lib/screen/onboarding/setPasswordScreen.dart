// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:task_manager_new/style/background.dart';
import 'package:task_manager_new/utility/widget.dart';

class setPassword extends StatefulWidget {
  const setPassword({super.key});

  @override
  State<setPassword> createState() => _setPasswordState();
}

class _setPasswordState extends State<setPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Background(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: setPasswordElements(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
          ),
        ),
      ),
    );
  }
}
