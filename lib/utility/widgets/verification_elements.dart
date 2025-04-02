import 'package:flutter/material.dart';
import 'package:task_manager_new/style/style.dart';

class verificationElements extends StatefulWidget {
  const verificationElements({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  State<verificationElements> createState() => _verificationElementsState();
}

class _verificationElementsState extends State<verificationElements> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: widget.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Email Address",
              style: AppTextStyles.head1Text(AppColors.colorDarkBlue),
            ),
            SizedBox(height: 12),
            Text(
              "A 6 digit verification pin will send to your \nemail address",
              style: AppTextStyles.buttonTextStyle(AppColors.colorLightGray),
            ),
            SizedBox(height: 20),
            TextFormField(decoration: InputDecoration(hintText: "Email")),
            SizedBox(height: 20),
            SizedBox(
              width: widget.width,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/emailVerification',
                  ); // Add navigation
                },
                child: Icon(
                  Icons.arrow_circle_right_outlined,
                  color: AppColors.colorWhite,
                  size: 30,
                ),
              ),
            ),
            SizedBox(height: 50),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: AppTextStyles.head6Text(Colors.black),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    " Sign in",
                    style: AppTextStyles.head6Text(AppColors.colorGreen),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
