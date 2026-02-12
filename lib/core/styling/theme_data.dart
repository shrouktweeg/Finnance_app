import 'package:flutter/material.dart';
import 'package:untitled/core/styling/app_colors.dart';
import 'package:untitled/core/styling/app_fonts.dart';
import 'package:untitled/core/styling/app_styles.dart';

class AppTheme{
  static ThemeData lightTheme=ThemeData(
    fontFamily: AppFonts.urbanistRegular,
    scaffoldBackgroundColor: AppColor.whiteColor,
    primaryColor: AppColor.primaryColor,
    textTheme: TextTheme(
      titleLarge: AppStyles.titleStyle,
      titleMedium: AppStyles.hintStyle,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColor.primaryColor,
      disabledColor:AppColor.subTitleColor,
    )
  );
}