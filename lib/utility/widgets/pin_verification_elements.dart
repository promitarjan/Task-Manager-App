import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_manager_new/style/style.dart';

class pinVerificationElements extends StatefulWidget {
  const pinVerificationElements({super.key});

  @override
  State<pinVerificationElements> createState() =>
      _pinVerificationElementsState();
}

class _pinVerificationElementsState extends State<pinVerificationElements> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: SizedBox(
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 200),
            Text(
              "Pin Verification",
              style: AppTextStyles.head1Text(AppColors.colorDarkBlue),
            ),
            SizedBox(height: 12),
            Text(
              "A 6 digit verification pin will send to your\nemail address ",
              style: AppTextStyles.buttonTextStyle(AppColors.colorLightGray),
            ),
            SizedBox(height: 20),
            _buildverifyEmailForm(context),
            SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/emailVerification',
                  ); // Add navigation
                },
                child: Text(
                  "Verify",
                  style: AppTextStyles.head6Text(AppColors.colorWhite),
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

Widget _buildverifyEmailForm(BuildContext context) {
  return Column(
    children: [
      PinCodeTextField(
        appContext: context,
        length: 5,
        obscureText: false,
        keyboardType: TextInputType.number,
        pinTheme: AppInputStyles.appOTPStyle(),
      ),
    ],
  );
}
