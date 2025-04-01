import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppColors {
  static const Color colorRed = Color.fromRGBO(231, 28, 36, 1);
  static const Color colorDark = Color.fromRGBO(136, 28, 32, 1);
  static const Color colorGreen = Color.fromRGBO(33, 191, 115, 1);
  static const Color colorBlue = Color.fromRGBO(52, 152, 219, 1.0);
  static const Color colorOrange = Color.fromRGBO(230, 126, 34, 1.0);
  static const Color colorWhite = Color.fromRGBO(255, 255, 255, 1.0);
  static const Color colorDarkBlue = Color.fromRGBO(44, 62, 80, 1.0);
  static const Color colorLightGray = Color.fromRGBO(135, 142, 150, 1.0);
  static const Color colorLight = Color.fromRGBO(211, 211, 211, 1.0);
}

class AppTextStyles {
  static TextStyle head1Text(Color textColor) => TextStyle(
    color: textColor,
    fontSize: 28,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w700,
  );

  static TextStyle head6Text(Color textColor) => TextStyle(
    color: textColor,
    fontSize: 16,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w700,
  );

  static TextStyle head7Text(Color textColor) => TextStyle(
    color: textColor,
    fontSize: 13,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w400,
  );

  static TextStyle head9Text(Color textColor) => TextStyle(
    color: textColor,
    fontSize: 9,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w500,
  );

  static TextStyle buttonTextStyle(Color textColor) => TextStyle(
    color: textColor,
    fontSize: 14,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w400,
  );
}

class AppInputStyles {
  static PinTheme appOTPStyle() => PinTheme(
    inactiveColor: AppColors.colorLight,
    inactiveFillColor: AppColors.colorWhite,
    selectedColor: AppColors.colorGreen,
    activeColor: AppColors.colorWhite,
    selectedFillColor: AppColors.colorGreen, // Ensure no white background
    shape: PinCodeFieldShape.box,
    borderRadius: BorderRadius.circular(8),
    fieldHeight: 50,
    borderWidth: 0.5,
    fieldWidth: 45,
    activeFillColor: Colors.white,
  );
}

class AppButtonStyles {
  static ButtonStyle appButtonStyle() => ElevatedButton.styleFrom(
    elevation: 6,
    padding: EdgeInsets.zero,
    backgroundColor: AppColors.colorGreen,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  );

  static ButtonStyle appStatusButtonStyle(Color btnColor) =>
      ElevatedButton.styleFrom(
        elevation: 1,
        padding: EdgeInsets.zero,
        backgroundColor: btnColor,
      );
}

class AppWidgets {
  static SizedBox itemSizeBox(Widget child) => SizedBox(
    width: double.infinity,
    child: Container(padding: const EdgeInsets.all(10), child: child),
  );

  static DecoratedBox appDropDownStyle(Widget child) => DecoratedBox(
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.white, width: 1),
      borderRadius: BorderRadius.circular(4),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: child,
    ),
  );

  static Ink successButtonChild(String buttonText) => Ink(
    decoration: BoxDecoration(
      color: AppColors.colorGreen,
      borderRadius: BorderRadius.circular(6),
    ),
    child: Container(
      height: 45,
      alignment: Alignment.center,
      child: Text(
        buttonText,
        style: AppTextStyles.buttonTextStyle(AppColors.colorOrange),
      ),
    ),
  );

  static Container statusChild(String statusText, Color statusColor) =>
      Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: statusColor,
        ),
        height: 20,
        width: 60,
        child: Text(
          statusText,
          style: const TextStyle(
            color: AppColors.colorWhite,
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
        ),
      );
}

class AppToasts {
  static void successToast(String msg) => Fluttertoast.showToast(
    msg: msg,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    toastLength: Toast.LENGTH_SHORT,
    backgroundColor: AppColors.colorGreen,
    textColor: AppColors.colorWhite,
    fontSize: 16.0,
  );

  static void errorToast(String msg) => Fluttertoast.showToast(
    msg: msg,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    toastLength: Toast.LENGTH_SHORT,
    backgroundColor: AppColors.colorRed,
    textColor: AppColors.colorWhite,
    fontSize: 16.0,
  );
}
