import 'package:flutter/material.dart';
import 'package:task_manager_new/style/style.dart';

class allElements extends StatefulWidget {
  const allElements({
    super.key,
    required this.height,
    required this.width,
    required this.onLoginPressed,
    required this.onForgetPasswordPressed,
    required this.onSignUpPressed,
  });

  final double height;
  final double width;
  final VoidCallback onLoginPressed;
  final VoidCallback onForgetPasswordPressed;
  final VoidCallback onSignUpPressed;

  @override
  State<allElements> createState() => _allElementsState();
}

class _allElementsState extends State<allElements> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: SizedBox(
        height: widget.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 200),
            Text(
              "Get Started With",
              style: AppTextStyles.head1Text(AppColors.colorDarkBlue),
            ),
            SizedBox(height: 20),
            TextFormField(decoration: InputDecoration(hintText: "Email")),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(hintText: "Password"),
              obscureText: true,
              obscuringCharacter: '*',
            ),
            SizedBox(height: 20),
            SizedBox(
              width: widget.width,
              child: ElevatedButton(
                onPressed: widget.onLoginPressed,
                child: Icon(
                  Icons.arrow_circle_right_outlined,
                  color: AppColors.colorWhite,
                  size: 30,
                ),
              ),
            ),
            SizedBox(height: 50),
            Center(
              child: InkWell(
                onTap: widget.onForgetPasswordPressed,
                child: Text(
                  "Forget Password?",
                  style: AppTextStyles.head7Text(AppColors.colorLightGray),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: AppTextStyles.head6Text(Colors.black),
                ),
                InkWell(
                  onTap: widget.onSignUpPressed,
                  child: Text(
                    " Sign Up",
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
