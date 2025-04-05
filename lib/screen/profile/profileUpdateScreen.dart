// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:task_manager_new/style/style.dart';
import 'package:task_manager_new/utility/widgets/tm_app_bar.dart';
import 'package:task_manager_new/style/background.dart';
import 'package:task_manager_new/utility/widgets/reg_screen_elements.dart';

class profileUpdateScreen extends StatefulWidget {
  const profileUpdateScreen({super.key});

  @override
  State<profileUpdateScreen> createState() => _profileUpdateScreenState();
}

class _profileUpdateScreenState extends State<profileUpdateScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: const TMAppBar(selectedIndex: 1, isUpdate: true),
        body: Background(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Update Profile",
                    style: AppTextStyles.head1Text(AppColors.colorDarkBlue),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: AppColors.colorLightGray,
                      child: Icon(
                        Icons.camera_alt,
                        color: AppColors.colorDarkBlue,
                        size: 30,
                      ),
                    ),
                  ),
                  regScreenElements(height: height, width: width, title: ''),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
