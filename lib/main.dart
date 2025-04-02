import 'package:flutter/material.dart';
import 'package:task_manager_new/screen/onboarding/splashScreen.dart';
import 'package:task_manager_new/style/style.dart';

void main() {
  runApp(TaskManager());
}

class TaskManager extends StatefulWidget {
  const TaskManager({super.key});

  @override
  State<TaskManager> createState() => _TaskManagerState();
}

class _TaskManagerState extends State<TaskManager> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.colorGreen,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.colorGreen,
          primary: AppColors.colorGreen,
        ),
        inputDecorationTheme: getInputDecorationTheme(),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: AppButtonStyles.appButtonStyle(),
        ),
      ),
      home: splashScreen(),
    );
  }

  InputDecorationTheme getInputDecorationTheme() {
    return InputDecorationTheme(
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.colorGreen, width: 1),
      ),
      fillColor: AppColors.colorWhite,
      filled: true,
      contentPadding: const EdgeInsets.fromLTRB(20, 10, 10, 20),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.colorWhite, width: 0.0),
      ),
      border: const OutlineInputBorder(),
    );
  }
}
