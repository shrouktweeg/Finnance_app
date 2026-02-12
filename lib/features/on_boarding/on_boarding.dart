import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/core/constants/assets_string.dart';
import 'package:untitled/core/navigation/routes_name.dart';
import 'package:untitled/core/styling/app_styles.dart';
import 'package:untitled/core/widgets/custom_button.dart';
import 'package:untitled/core/widgets/custom_sized_box.dart';
import 'package:untitled/core/widgets/outline_custom_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Image.asset(ImagesString.onBoardingAsset,width: 375.w,height: 570.h,fit: BoxFit.fill,),
          CustomHeightSizedBox(height: 21),
          CustomButton(height: 56, width: 331,title: 'Login',onPressed: (){
            context.pushNamed(RoutesName.login);
          },horizontalPadding: 22.sp,),
          CustomHeightSizedBox(height: 15),
          OutlineCustomButton(height: 56, width: 331,title: 'Register',onPressed: (){
            context.pushNamed(RoutesName.register);
          },horizontalPadding: 22.sp,),
          CustomHeightSizedBox(height: 46),
          TextButton(onPressed: (){}, child: Text('Continue as a guest',style: AppStyles.textButtonStyle,),),
          CustomHeightSizedBox(height: 30.h),
        ],
      ),
    );
  }
}
