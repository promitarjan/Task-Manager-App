import 'package:flutter/material.dart';

class completedTaskScreen extends StatefulWidget {
  const completedTaskScreen({super.key});

  @override
  State<completedTaskScreen> createState() => _completedTaskScreenState();
}

class _completedTaskScreenState extends State<completedTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Text("Completed Task")));
  }
}
