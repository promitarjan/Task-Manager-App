// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:task_manager_new/screen/task/taskCreateScreen.dart';
import 'package:task_manager_new/style/style.dart';

class newTaskScreen extends StatefulWidget {
  const newTaskScreen({super.key});

  @override
  State<newTaskScreen> createState() => _newTaskScreenState();
}

class _newTaskScreenState extends State<newTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.colorGreen,
          foregroundColor: AppColors.colorWhite,
          shape: CircleBorder(
            side: BorderSide(color: AppColors.colorGreen, width: 2.0),
          ),
          onPressed: () {
            // Action to perform when the button is pressed
            navigateToTaskCreateScreen(context);
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

void navigateToTaskCreateScreen(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const taskCreateScreen()),
  );
}
