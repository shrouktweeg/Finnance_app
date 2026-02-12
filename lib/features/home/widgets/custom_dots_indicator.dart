import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/styling/app_colors.dart';

class CustomDotsIndicator extends StatelessWidget {
  final int currentIndex;
  const CustomDotsIndicator({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      position: currentIndex.toDouble(),
      decorator: DotsDecorator(
        size: Size(8.w, 8.h),
        activeSize: Size(16.w, 8.h),
        color: Color(0xffE3E9ED), // Inactive color
        spacing: EdgeInsets.symmetric(horizontal: 4),
        activeColor: AppColor.primaryColor,
      ),
    );
  }
}
