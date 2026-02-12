import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {
  final double radius;
 final Color backgroundColor;
 final Color? borderColor;
 final Widget child;
 final double height;
 final double width;
  const CustomContainer({super.key, required this.radius, required this.backgroundColor, required this.child, required this.height, required this.width,  this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius.r),
        color:backgroundColor,
        shape: BoxShape.rectangle,
        border: Border(
            left: BorderSide(color: borderColor??Colors.transparent),
            right: BorderSide(color: borderColor??Colors.transparent),
          top: BorderSide(color: borderColor??Colors.transparent),
          bottom: BorderSide(color: borderColor??Colors.transparent),
        ),
      ),
      height:height.h ,
      width: width.w,
      child:child ,
    );
  }
}
