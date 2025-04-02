import 'package:flutter/material.dart';
import 'package:task_manager_new/style/style.dart';
import 'package:task_manager_new/utility/widgets/list_view_widget.dart';

class completedTaskScreen extends StatefulWidget {
  const completedTaskScreen({super.key});

  @override
  State<completedTaskScreen> createState() => _completedTaskScreenState();
}

class _completedTaskScreenState extends State<completedTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: listView(status: "Completed", bgcolor: AppColors.colorGreen),
      ),
    );
  }
}
