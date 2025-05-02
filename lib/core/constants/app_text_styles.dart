import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vozhaomuz/core/constants/app_colors.dart';

class AppTextStyles {
  static const TextStyle bigTextButton = TextStyle(
    color: AppColors.whiteText,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static const mediumTextButton = TextStyle(
    color: AppColors.whiteText,
    fontSize: 13,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle headingStyle = TextStyle(
    fontWeight: FontWeight.w500,
    color: AppColors.headingText,
    fontSize: 13,
  );
  static const TextStyle hintextStyle = TextStyle(
    color: Colors.grey,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle bigTextStyle = TextStyle(
    color: Color.fromARGB(255, 26, 26, 26),
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
}
