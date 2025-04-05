import 'package:flutter/material.dart';
import 'package:task_manager_new/style/style.dart';

class listView extends StatelessWidget {
  const listView({super.key, required this.status, required this.bgcolor});

  final String status;
  final Color bgcolor;

  void _showEditDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Task'),
          content: Text('Do you want to edit this task?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                // Add your edit logic here
              },
              child: Text('Edit'),
            ),
          ],
        );
      },
    );
  }

  void _showDeleteDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Delete Task'),
          content: Text('Do you want to delete this task?'),
          actions: [
            TextButton(onPressed: () {}, child: Text('Cancel')),
            TextButton(onPressed: () {}, child: Text('Delete')),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.only(bottom: 80),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            color: AppColors.colorWhite,
            elevation: 1,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Task ${index + 1}',
                      style: AppTextStyles.head6Text(AppColors.colorDarkBlue),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Task description goes here',
                      style: AppTextStyles.head7Text(AppColors.colorLightGray),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Date: 2023-10-01',
                      style: AppTextStyles.head7Text(AppColors.colorDarkBlue),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Chip(
                          label: SizedBox(
                            height: 13,
                            width: 50,
                            child: Center(
                              child: FittedBox(
                                child: Text(
                                  status,
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          backgroundColor: bgcolor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          side: BorderSide(color: bgcolor, width: 2.0),
                        ),
                        Wrap(
                          children: [
                            GestureDetector(
                              onTap: () => _showEditDialog(context),
                              child: Icon(
                                Icons.edit,
                                color: AppColors.colorDarkBlue,
                                size: 20,
                              ),
                            ),
                            SizedBox(width: 5),
                            GestureDetector(
                              onTap: () => _showDeleteDialog(context),
                              child: Icon(
                                Icons.delete,
                                color: AppColors.colorDarkBlue,
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
