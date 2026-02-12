import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:untitled/core/widgets/custom_sized_box.dart';
import 'package:untitled/features/home/widgets/custom_carousel_slider_and_dots_indicator_widget.dart';
import 'package:untitled/features/home/widgets/custom_grid_view.dart';
import 'package:untitled/features/home/widgets/custom_grid_view_item.dart';
import 'package:untitled/features/home/widgets/custom_home_header_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<CustomGridViewItem>customGridViewItems= [
    CustomGridViewItem(icon: Icons.send_sharp,title: 'Send money',subTitle: 'Take acc to acc',),
    CustomGridViewItem(icon: Icons.wallet,title: 'Pay the bill',subTitle: 'Lorem ipsum',),
    CustomGridViewItem(icon: Icons.send_sharp,title: 'Request',subTitle: 'Lorem ipsum',),
    CustomGridViewItem(icon: Icons.person,title: 'Contact',subTitle: 'Lorem ipsum',),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 19.h),
      child: Column(
        children: [
          CustomHomeHeaderWidget(),
          CustomHeightSizedBox(height: 24),
          CustomCarouselSliderAndDDotsIndicatorWidget(),
          CustomHeightSizedBox(height: 24),
        CustomGridView(customGridViewItems: customGridViewItems,),
        ],
      ),
    );
  }
}
