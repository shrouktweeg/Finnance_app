import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/core/styling/app_colors.dart';
import 'package:untitled/core/styling/app_styles.dart';

class CustomButton extends StatelessWidget {
 final void Function()? onPressed;
 final double height;
 final double width;
 final double? borderRadius;
 final String? title;
 final Color? backgroundColor;
 final double? verticalPadding;
 final double? horizontalPadding;
  const CustomButton({super.key, this.onPressed, required this.height, required this.width,  this.title, this.borderRadius,  this.backgroundColor, this.verticalPadding, this.horizontalPadding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical:verticalPadding??0 ,horizontal:horizontalPadding??0),
      child: ElevatedButton(
          onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: Size(width.w, height.h),
          backgroundColor:backgroundColor??AppColor.primaryColor,
          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius??8.r)),
        ),
        child: Text(title??"",style: AppStyles.titleButtonStyle,),
      ),
    );
  }
}
