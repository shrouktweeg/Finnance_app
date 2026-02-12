import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/assets_string.dart';
import '../styling/app_fonts.dart';
import '../styling/app_styles.dart';
import 'custom_sized_box.dart';

class CustomCarouselItemWidget extends StatelessWidget {
  final String cardType;
  final String subTitle;
  final String money;
  final String password;
  final String date;
  final Color color;
  final double? width;
  final double? height;
  final bool isCard;
  const CustomCarouselItemWidget({
    super.key,
    required this.cardType,
    required this.subTitle,
    required this.money,
    required this.password,
    required this.date,
    required this.color,
    this.width,
    this.height,
    this.isCard = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: width ?? 207.w,
          height: height ?? 263.h,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        Positioned(
          width: 277.w,
          height: 277.h,
          right: 9.w,
          top: 62.h,
          child: Image.asset(ImagesString.bigShadow),
        ),
        Positioned(
          width: 153.w,
          height: 153.h,
          right: 71.w,
          top: 124.h,
          child: Image.asset(ImagesString.smallShadow),
        ),
        SizedBox(
          width: width ?? 207.w,
          height: height ?? 263.h,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                isCard
                    ? Row(
                        children: [
                          Text(
                            cardType,
                            style: AppStyles.titleStyle.copyWith(
                              color: Color(0xffFDFDFD),
                              fontSize: 12.sp,
                            ),
                          ),
                          Spacer(),
                          SvgPicture.asset(
                            IconsString.visa,
                            width: 52.w,
                            height: 16.h,
                          ),

                          CustomWidthSizedBox(width: 24),
                        ],
                      )
                    : Text(
                        cardType,
                        style: AppStyles.titleStyle.copyWith(
                          color: Color(0xffFDFDFD),
                          fontSize: 12.sp,
                        ),
                      ),
                Spacer(),
                Text(
                  subTitle,
                  style: AppStyles.graySemiBold600Style.copyWith(
                    color: Color(0xffFDFDFD),
                    fontWeight: FontWeight.w500,
                    fontFamily: AppFonts.urbanistMedium,
                  ),
                ),
                CustomHeightSizedBox(height: 8),
                Text(money, style: AppStyles.whiteSemiBold600Style),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      password,
                      style: AppStyles.hintStyle.copyWith(fontSize: 16.sp),
                    ),
                    Text(
                      date,
                      style: AppStyles.hintStyle.copyWith(
                        fontSize: 12.sp,
                        color: Color(0xffFDFDFD),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
