import 'package:flutter/material.dart';
import 'package:task_manager_new/style/style.dart';

class setPasswordElements extends StatefulWidget {
  const setPasswordElements({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  State<setPasswordElements> createState() => _setPasswordElementsState();
}

class _setPasswordElementsState extends State<setPasswordElements> {
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
              "Set Password",
              style: AppTextStyles.head1Text(AppColors.colorDarkBlue),
            ),
            SizedBox(height: 12),
            Text(
              "Minimum length password 8 character with \nLetter and number combination ",
              style: AppTextStyles.buttonTextStyle(AppColors.colorLightGray),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(hintText: "Password"),
              obscureText: true,
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(hintText: "Confirm Password"),
              obscureText: true,
            ),
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
