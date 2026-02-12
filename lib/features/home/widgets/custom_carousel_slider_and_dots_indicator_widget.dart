import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/features/home/widgets/custom_dots_indicator.dart';
import '../../../core/styling/app_colors.dart';
import '../../../core/widgets/custom_sized_box.dart';
import '../../../core/widgets/custom_carousel_item_widget.dart';

class CustomCarouselSliderAndDDotsIndicatorWidget extends StatefulWidget {
  const CustomCarouselSliderAndDDotsIndicatorWidget({super.key});

  @override
  State<CustomCarouselSliderAndDDotsIndicatorWidget> createState() => _CustomCarouselSliderAndDDotsIndicatorWidgetState();
}

class _CustomCarouselSliderAndDDotsIndicatorWidgetState extends State<CustomCarouselSliderAndDDotsIndicatorWidget> {
   int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            padEnds: false,
            viewportFraction: 0.75,
            enlargeCenterPage: true,
            enlargeFactor: 0.2,
            height: 263.h,
            onPageChanged: (index, carouselPageChangedReason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          items: [
            CustomCarouselItemWidget(
              color: AppColor.primaryColor,
              cardType: 'X-Card',
              subTitle: 'Balance',
              money: '23400 EG',
              password:'****  3434',
              date: '12/24',
            ),
            CustomCarouselItemWidget(
              color: Color(0xff123333),
              cardType: 'X-Card',
              subTitle: 'Balance',
              money: '3209 EG',
              password:'****  4545',
              date: '12/24',
            ),
            CustomCarouselItemWidget(
              color: AppColor.primaryColor,
              cardType: 'X-Card',
              subTitle: 'Balance',
              money: '23400 EG',
              password:'****  3434',
              date: '12/24',
            ),
          ],
        ),
        CustomHeightSizedBox(height: 16),
        CustomDotsIndicator(currentIndex: currentIndex),
      ],
    );
  }
}
