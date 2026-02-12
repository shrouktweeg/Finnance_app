import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/core/widgets/custom_sized_box.dart';

import '../../../core/constants/assets_string.dart';
import '../../../core/navigation/routes_name.dart';
import '../../../core/styling/app_styles.dart';
import '../../../core/widgets/custom_button.dart';

class ChangedPassScreen extends StatelessWidget {
  const ChangedPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(IconsString.successMark,width: 100.w,height: 100.h,fit: BoxFit.cover,),
              CustomHeightSizedBox(height: 35),
              Text(
                'Password Changed!',
                style: AppStyles.titleStyle,
              ),
              CustomHeightSizedBox(height: 10),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   SizedBox(
                        width:226.w ,
                        child: Text("Your password has been changed successfully.",textAlign: TextAlign.center,style: AppStyles.hintStyle.copyWith(color: Color(0xff8391A1)),)),
                 ],
               ),
              CustomHeightSizedBox(height: 32),
              CustomButton(
                height: 56,
                width: 331,
                title: 'Back to Login',
                onPressed: () {
                    context.go(RoutesName.login);

                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
