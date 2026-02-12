import 'package:flutter/material.dart';
import 'package:untitled/core/widgets/custom_sized_box.dart';
import 'package:untitled/features/home/widgets/custom_grid_view.dart';
import 'package:untitled/features/home/widgets/custom_grid_view_item.dart';

import 'package:untitled/features/statistic/widgets/custom_charts.dart';
import '../../core/widgets/custom_app_bar.dart';

class StatisticScreen extends StatefulWidget {
  const StatisticScreen({super.key});

  @override
  State<StatisticScreen> createState() => _StatisticScreenState();
}

class _StatisticScreenState extends State<StatisticScreen> {
final List<CustomGridViewItem>customGridViewItems= [
  CustomGridViewItem(icon: Icons.download_rounded,title: '15000 EG',subTitle: 'Income',),
  CustomGridViewItem(icon: Icons.upload,title: '35000 EG',subTitle: 'Outcome',),
];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(title: 'Reload', icon: Icons.more_horiz),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                CustomCharts(),
                CustomHeightSizedBox(height: 16),
                CustomGridView(customGridViewItems: customGridViewItems,),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
