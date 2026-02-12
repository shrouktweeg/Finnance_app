import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/core/styling/app_colors.dart';

class CustomAddIconWidget extends StatelessWidget {
  const CustomAddIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24.w,
      height: 24.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xffFDFDFD),
        borderRadius: BorderRadius.circular(8.r),
        shape: BoxShape.rectangle,
      ),
      child: Icon(Icons.add,size: 25,color: AppColor.primaryColor,),
    );
  }
}
