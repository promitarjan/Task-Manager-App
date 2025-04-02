// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:task_manager_new/utility/widgets/list_view_widget.dart';

class progressTaskScreen extends StatefulWidget {
  const progressTaskScreen({super.key});

  @override
  State<progressTaskScreen> createState() => _progressTaskScreenState();
}

class _progressTaskScreenState extends State<progressTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: listView(status: "Progress", bgcolor: Colors.purple),
      ),
    );
  }
}
