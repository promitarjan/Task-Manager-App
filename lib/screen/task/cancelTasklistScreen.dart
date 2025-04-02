// ignore: file_names
import 'package:flutter/material.dart';
import 'package:task_manager_new/utility/widgets/list_view_widget.dart';

class cancelledTaskScreen extends StatefulWidget {
  const cancelledTaskScreen({super.key});

  @override
  State<cancelledTaskScreen> createState() => _cancelledTaskScreenState();
}

class _cancelledTaskScreenState extends State<cancelledTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: listView(status: "Canceled", bgcolor: Colors.red)),
    );
  }
}
