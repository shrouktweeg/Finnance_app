import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/core/styling/app_colors.dart';
import 'package:untitled/core/styling/app_fonts.dart';
import 'package:untitled/core/styling/app_styles.dart';

class LoginOrRegisterWithWidget extends StatelessWidget {
  final String title;
  const LoginOrRegisterWithWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width:112.h ,
            child: Divider(color: AppColor.textFieldBorderColor,thickness: 1,)),
        Text(title,style: AppStyles.graySemiBold600Style.copyWith(fontFamily: AppFonts.urbanistSemiBold)),
        SizedBox(
            width:112.h ,
            child: Divider(color: AppColor.textFieldBorderColor,thickness: 1,)),

      ],
    );
  }
}
