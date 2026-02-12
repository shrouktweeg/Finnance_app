import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/core/styling/app_colors.dart';
import 'package:untitled/features/auth/widgets/custom_container.dart';

class CustomArrowBack extends StatelessWidget {
  const CustomArrowBack({super.key});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
        onTap: () {
          if (GoRouter.of(context).canPop()) {
            context.pop();
          } else {
            context.go('/');
          }
        },
      child: CustomContainer(radius: 12, backgroundColor: Color(0xffE8ECF4), height: 41, width: 41,
        child: Icon(Icons.arrow_back_ios_new,color: AppColor.primaryColor,size: 19.sp,),),
    )
    ;
  }
}
