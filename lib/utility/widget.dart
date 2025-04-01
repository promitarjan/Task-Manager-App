// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_manager_new/screen/onboarding/loginScreen.dart';
import 'package:task_manager_new/screen/task/cancelTasklistScreen.dart';
import 'package:task_manager_new/screen/task/completedTasklistScreen.dart';
import 'package:task_manager_new/screen/task/newTasklistScreen.dart';
import 'package:task_manager_new/screen/task/progressTasklistScreen.dart';
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

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    newTaskScreen(),
    completedTaskScreen(),
    cancelledTaskScreen(),
    progressTaskScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: TMAppBar(selectedIndex: _selectedIndex),
        body: _screens[_selectedIndex],

        bottomNavigationBar: NavigationBar(
          selectedIndex: _selectedIndex,
          onDestinationSelected: (int index) {
            _selectedIndex = index;
            setState(() {});
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.new_label_outlined),
              label: 'New Tasks',
            ),
            NavigationDestination(
              icon: Icon(Icons.done_outline),
              label: 'Completed',
            ),
            NavigationDestination(
              icon: Icon(Icons.cancel_outlined),
              label: 'Cancelled',
            ),
            NavigationDestination(
              icon: Icon(Icons.pending_actions_outlined),
              label: 'Progress',
            ),
          ],
        ),
      ),
    );
  }
}

class TMAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  const TMAppBar({super.key, required int selectedIndex})
    : _selectedIndex = selectedIndex;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  final int _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.colorGreen,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: AppColors.colorWhite,
            radius: 20,
            foregroundImage: NetworkImage(
              "https://scontent.fjsr11-1.fna.fbcdn.net/v/t39.30808-6/428628058_7423518701075010_2861791873850197502_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeF49C7DO4TWzofFJz4xEGt_8PRqxfB_0Ezw9GrF8H_QTOVXrPJHkrdYnjyB8hI2VGAm5TO9N28TmXUY2kZCnmPy&_nc_ohc=Kyi01zLysl8Q7kNvgFGj6yI&_nc_oc=AdlxMOP8TV8-lMdmLZ-Q35Ous_67YvTZ9hVU8BnUm1OsEsASLAthhBodelOoD-jukEg&_nc_zt=23&_nc_ht=scontent.fjsr11-1.fna&_nc_gid=f2vpPp0ONhS32ExkDMzuiw&oh=00_AYF2U-V9tgKJGR_mBiDnJLUXEWpOlVgx1qYBlYX0t0X7WQ&oe=67F08E86",
            ),
          ),
          const SizedBox(width: 8), // Add spacing between avatar and text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Promit Arjan",
                  style: TextStyle(
                    color: AppColors.colorWhite,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                  // Prevent overflow
                ),
                Text(
                  "arjan@email.com",
                  style: TextStyle(
                    color: AppColors.colorWhite,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 11,
                  ),
                  // Prevent overflow
                ),
              ],
            ),
          ),
          if (_selectedIndex == 0) ...[
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const loginScreen()),
                  (route) => false,
                );
              },
              color: AppColors.colorWhite,
            ),
          ],
        ],
      ),
    );
  }
}
