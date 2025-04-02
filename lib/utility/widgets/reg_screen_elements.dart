import 'package:flutter/material.dart';
import 'package:task_manager_new/style/style.dart';

class regScreenElements extends StatefulWidget {
  const regScreenElements({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  State<regScreenElements> createState() => _regScreenElementsState();
}

class _regScreenElementsState extends State<regScreenElements> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 60),
          Text(
            "Join With Us",
            style: AppTextStyles.head1Text(AppColors.colorDarkBlue),
          ),

          for (String i in [
            "Email",
            "First Name",
            "Last Name",
            "Mobile Number",
          ]) ...[
            SizedBox(height: 20),
            TextFormField(decoration: InputDecoration(hintText: i)),
            SizedBox(height: 20),
          ],

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
        ],
      ),
    );
  }
}
