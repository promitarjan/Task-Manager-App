import 'package:flutter/material.dart';
import 'package:task_manager_new/style/style.dart';
import 'package:task_manager_new/utility/widget.dart';

class taskCreateScreen extends StatefulWidget {
  const taskCreateScreen({super.key});

  @override
  State<taskCreateScreen> createState() => _taskCreateScreenState();
}

class _taskCreateScreenState extends State<taskCreateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMAppBar(selectedIndex: 1),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 160),
              Text(
                "Add New Task",
                style: AppTextStyles.head1Text(AppColors.colorDarkBlue),
              ),
              SizedBox(height: 20),
              TextFormField(decoration: InputDecoration(hintText: 'Title')),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(hintText: 'Description'),
                maxLines: 5,
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.arrow_circle_right_outlined,
                    color: AppColors.colorWhite,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
