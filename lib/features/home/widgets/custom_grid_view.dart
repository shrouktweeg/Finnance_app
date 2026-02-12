import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/features/home/widgets/custom_grid_view_item.dart';


class CustomGridView extends StatelessWidget {
 final List<CustomGridViewItem>customGridViewItems;
  const CustomGridView({super.key, required this.customGridViewItems});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16.sp,
          crossAxisSpacing: 16.sp,
        ),
        children:customGridViewItems,
      ),);
  }
}
