import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safty_children/core/themeing/app_colors.dart';

abstract class AppStyles {
  static TextStyle appBarStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w600,
    fontSize: 15.sp,
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
  static TextStyle boxStyle = TextStyle(
    color: AppColors.fontColor,
    fontWeight: FontWeight.bold,
    fontSize: 27.sp,
  );
}
