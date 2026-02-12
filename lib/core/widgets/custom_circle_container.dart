import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCircleContainer extends StatelessWidget {
  final double width;
  final double height;
  final double? borderWidth;
  final Color color;
  final Color borderColor;
  final Widget child;
  const CustomCircleContainer({super.key, required this.width, required this.height, required this.color, required this.borderColor,  this.borderWidth, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width.w,
      height: height.h,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: Border(
          top: BorderSide(color:borderColor,width: borderWidth??0 ),
          bottom: BorderSide(color:borderColor,width: borderWidth??0 ),
          right: BorderSide(color:borderColor,width: borderWidth??0 ),
          left: BorderSide(color:borderColor,width: borderWidth??0 ),
        )
      ),
      child: child,
    );
  }
}
