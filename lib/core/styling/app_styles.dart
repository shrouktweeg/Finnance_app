import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/core/styling/app_colors.dart';
import 'package:untitled/core/styling/app_fonts.dart';

class AppStyles{
  static TextStyle titleStyle=TextStyle(
    fontSize: 30.sp,
    fontFamily: AppFonts.urbanistSemiBold,
    fontWeight: FontWeight.w700,
    color: AppColor.primaryColor
  );
  static TextStyle hintStyle=TextStyle(
    fontSize: 15.sp,
    fontFamily: AppFonts.urbanistMedium,
    fontWeight: FontWeight.w500,
    color: AppColor.subTitleColor
  );
  static TextStyle graySemiBold600Style=TextStyle(
      fontSize: 14.sp,
      fontFamily: AppFonts.urbanistSemiBold,
      fontWeight: FontWeight.w600,
      color: AppColor.darkGrey,
  );
  static TextStyle titleButtonStyle=TextStyle(
    fontSize: 15.sp,
    fontFamily: AppFonts.urbanistRegular,
    fontWeight: FontWeight.w600,
    color: AppColor.whiteColor,
  );
  static TextStyle grayMedium500Style=TextStyle(
    fontSize: 14.sp,
    fontFamily: AppFonts.urbanistMedium,
    fontWeight: FontWeight.w500,
    color: AppColor.greyColor,
  );
  static TextStyle blackMedium500Style=TextStyle(
    fontSize: 16.sp,
    fontFamily: AppFonts.urbanistMedium,
    fontWeight: FontWeight.w500,
    color: Color(0xff1F2C37),
  );
  static TextStyle whiteSemiBold600Style=TextStyle(
    fontSize: 24.sp,
    fontFamily: AppFonts.urbanistSemiBold,
    fontWeight: FontWeight.w600,
    color: AppColor.whiteColor,
  );
  static TextStyle gray12Medium500Style=TextStyle(
    fontSize: 12.sp,
    fontFamily: AppFonts.urbanistMedium,
    fontWeight: FontWeight.w500,
    color: AppColor.darkGrey,
  );
  static TextStyle textButtonStyle=TextStyle(
    fontSize: 15.sp,
    fontFamily: AppFonts.urbanistBold,
    fontWeight: FontWeight.w700,
    color: AppColor.blackTextColor,
    decoration: TextDecoration.underline
  );



}