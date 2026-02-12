import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/core/styling/app_styles.dart';

class CustomRichText extends StatelessWidget {
  final String primaryColorText;
  final String secondaryText;
  final void Function()? onTap;
  const CustomRichText({super.key, required this.primaryColorText, required this.secondaryText, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap ,
      child: Align(
        alignment: Alignment.center,
        child: RichText(
            text: TextSpan(
                children: [
                  TextSpan(text: primaryColorText,style: AppStyles.titleStyle.copyWith(fontSize: 15.sp,fontWeight: FontWeight.w500)),
                  TextSpan(text: secondaryText,style: AppStyles.titleStyle.copyWith(fontSize: 15.sp,color: Color(0xff202955))),
                ]
            )),
      ),
    );
  }
}
