import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/core/styling/app_colors.dart';
import 'package:untitled/core/styling/app_styles.dart';

class OutlineCustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final double height;
  final double width;
  final double? borderRadius;
  final String? title;
  final Color? backgroundColor;
  final double? verticalPadding;
  final double? horizontalPadding;

  const OutlineCustomButton({super.key, this.onPressed, required this.height, required this.width,  this.title, this.borderRadius,  this.backgroundColor,  this.verticalPadding,  this.horizontalPadding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical:verticalPadding??0 ,horizontal:horizontalPadding??0),
      child: OutlinedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: Size(width.w, height.h),
          backgroundColor:backgroundColor??AppColor.whiteColor,
          shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius??8.r),
              side: BorderSide(color: AppColor.primaryColor,strokeAlign: 1),),
        ),
        child: Text(title??"",style: AppStyles.titleButtonStyle.copyWith(color: AppColor.primaryColor),),
      ),
    );
  }
}
