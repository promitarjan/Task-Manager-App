// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:task_manager_new/screen/task/taskCreateScreen.dart';
import 'package:task_manager_new/style/style.dart';
import 'package:task_manager_new/utility/widgets/list_view_widget.dart';

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
            navigateToTaskCreateScreen(context);
          },
          child: Icon(Icons.add),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              _buildSummarySection(),
              listView(status: 'New', bgcolor: AppColors.colorBlue),
            ],
          ),
        ),
      ),
    );
  }

  Row _buildSummarySection() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        summary(count: '09', title: 'New Tasks'),
        summary(count: '09', title: 'Completed'),
        summary(count: '09', title: 'Progress'),
        summary(count: '09', title: 'Canceled'),
      ],
    );
  }
}

class summary extends StatefulWidget {
  const summary({super.key, required this.count, required this.title});
  final String count;
  final String title;

  @override
  State<summary> createState() => _summaryState();
}

class _summaryState extends State<summary> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.colorWhite,
      elevation: 1,
      child: SizedBox(
        height: 80,
        width: 90,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FittedBox(
                child: Text(
                  widget.count, // Fixed to use widget.count
                  style: AppTextStyles.head1Text(AppColors.colorDarkBlue),
                ),
              ),
              FittedBox(child: Text(widget.title)), // Fixed to use widget.title
            ],
          ),
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
