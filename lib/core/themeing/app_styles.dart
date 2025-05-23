import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safty_children/core/themeing/app_colors.dart';

abstract class AppStyles {
  static const TextStyle appBarStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headStyle = TextStyle(
    color: AppColors.red,
    fontWeight: FontWeight.bold,
    fontSize: 18.sp,
  );
  static TextStyle descriptionStyle = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
  );
}
