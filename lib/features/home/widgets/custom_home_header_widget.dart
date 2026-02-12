import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/assets_string.dart';
import '../../../core/styling/app_colors.dart';
import '../../../core/styling/app_fonts.dart';
import '../../../core/widgets/custom_circle_container.dart';
import '../../../core/widgets/custom_sized_box.dart';

class CustomHomeHeaderWidget extends StatelessWidget {
  const CustomHomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        ClipOval(child: Image.asset(ImagesString.profileAsset,width: 48.w,height: 48.h,fit: BoxFit.fill,)),
        CustomWidthSizedBox(width: 11),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome back',style: TextStyle(fontFamily: AppFonts.urbanistMedium,fontWeight: FontWeight.w500,fontSize: 12.sp,color: Color(0xff9CA4AB)),)
            ,   Text('Shrouk Tweeg',style: TextStyle(fontFamily: AppFonts.urbanistSemiBold,fontWeight: FontWeight.w600,fontSize: 18.sp,color: Color(0xff1F2C37)),)
          ],
        ),
        CustomWidthSizedBox(width: 68),
        CustomCircleContainer(width: 48, height: 48, color: Color(0xffFDFDFD), borderColor: Color(0xffE3E9ED),borderWidth: 1.w, child: Icon(Icons.notifications,color: AppColor.primaryColor,),)
      ],
    );
  }
}
