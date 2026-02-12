import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/styling/app_colors.dart';
import '../../../core/styling/app_styles.dart';
import '../../../core/widgets/custom_sized_box.dart';
import '../../auth/widgets/custom_container.dart';

class CustomGridViewItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subTitle;
  const CustomGridViewItem({super.key, required this.icon, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 156.w,
      height: 140.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color:Color(0xffFDFDFD),
        border: Border(
          top: BorderSide(color: Color(0xffE3E9ED),),
          bottom: BorderSide(color: Color(0xffE3E9ED),),
          left: BorderSide(color: Color(0xffE3E9ED),),
          right: BorderSide(color: Color(0xffE3E9ED),),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomContainer(
              radius: 12,
              backgroundColor: Color(0xffECF1F6),
              height: 48,
              width: 48,
              child: Icon(icon,color: AppColor.primaryColor,size: 24.sp,),
            ),
            CustomHeightSizedBox(height: 12),
            Text(title,style: AppStyles.titleStyle.copyWith(fontSize: 16.sp,color: Color(0xff1F2C37),fontWeight: FontWeight.w600),),
            CustomHeightSizedBox(height: 3),
            Text(subTitle,style: AppStyles.gray12Medium500Style,),

          ],
        ),
      ),
    );
  }
}
