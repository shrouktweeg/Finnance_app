import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/core/navigation/routes_name.dart';

import '../styling/app_colors.dart';
import '../styling/app_styles.dart';
import 'custom_circle_container.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final IconData icon;
  const CustomAppBar({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 24.sp,
        right: 24.sp,
      ),
      height: 100.h,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (){
              context.go(RoutesName.main);
            },
            child: CustomCircleContainer(
              width: 48.w,
              height: 48.h,
              color: AppColor.whiteColor,
              borderColor: Color(0xffE3E9ED),
              child: Icon(Icons.arrow_back_ios),
            ),
          ),
          Text(
            title,
            style: AppStyles.graySemiBold600Style.copyWith(
              fontSize: 18.sp,
              color: Color(0xff0E0D0D),
            ),
          ),
          CustomCircleContainer(
            width: 48.w,
            height: 48.h,
            color: AppColor.whiteColor,
            borderColor: Color(0xffF2F2F5),
            child: Icon(icon),
          ),
        ],
      ),
    );
  }
}
