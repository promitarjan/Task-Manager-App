import 'package:flutter/material.dart';

class cancelledTaskScreen extends StatefulWidget {
  const cancelledTaskScreen({super.key});

  @override
  State<cancelledTaskScreen> createState() => _cancelledTaskScreenState();
}

class _cancelledTaskScreenState extends State<cancelledTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Text("Cancelled Task")));
  }
}
