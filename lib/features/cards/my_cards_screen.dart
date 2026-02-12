import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/core/styling/app_colors.dart';
import 'package:untitled/core/widgets/custom_app_bar.dart';
import 'package:untitled/core/widgets/custom_sized_box.dart';
import 'package:untitled/core/widgets/custom_carousel_item_widget.dart';

class MyCardsScreen extends StatelessWidget {
  const MyCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(title: 'All Cards',icon: Icons.more_horiz,),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomCarouselItemWidget(
                    isCard: true,
                    cardType: 'X-Card',
                    subTitle: 'Balance',
                    money: '23400 EG',
                    password: '****  3434',
                    date: '12/24',
                    color: AppColor.primaryColor,
                    width: 327.w,
                    height: 179.h,
                  ),
                  CustomHeightSizedBox(height: 24),
                  CustomCarouselItemWidget(
                    isCard: true,
                    cardType: 'X-Card',
                    subTitle: 'Balance',
                    money: '3209 EG',
                    password: '****  3434',
                    date: '12/24',
                    color: Color(0xff123333),
                    width: 327.w,
                    height: 179.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
