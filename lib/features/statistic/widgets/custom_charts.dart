import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/styling/app_colors.dart';

class CustomCharts extends StatelessWidget {
  const CustomCharts({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 236.h,
      width: 327.w,
      child: BarChart(
        BarChartData(
          gridData: FlGridData(
              drawVerticalLine: false,
              show: true,
              drawHorizontalLine: true,
              getDrawingHorizontalLine: (value) {
                return FlLine(
                  color: Colors.grey.withOpacity(0.2),
                  strokeWidth: 1,
                );}
          ),
          titlesData: titlesData,
          borderData: borderData,
          barGroups: barGroups,
          alignment: BarChartAlignment.spaceAround,
          maxY: 12,
        ),
      ),
    );
  }
}
Widget getTitles(double value, TitleMeta meta) {
  final style = TextStyle(
    color: AppColor.primaryColor,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );
  String text = switch (value.toInt()) {
    0 => 'Jan',
    1 => 'Feb',
    2 => 'Mar',
    3 => 'Apr',
    4 => 'May',
    5 => 'Jun',
    6 => 'July',
    _ => '',
  };
  return SideTitleWidget(
    meta: meta,
    space: 4,
    child: Text(text, style: style),
  );
}

FlTitlesData get titlesData => FlTitlesData(
  show: true,
  rightTitles: AxisTitles(
    sideTitles: SideTitles(
      showTitles: false,
    ),
  ),
  topTitles: AxisTitles(
    sideTitles: SideTitles(
      showTitles: false,
    ),
  ),
  bottomTitles: AxisTitles(
    sideTitles: SideTitles(
      showTitles: true,
      reservedSize: 30,
      getTitlesWidget: getTitles,
    ),
  ),
  leftTitles:  AxisTitles(
    sideTitles: SideTitles(
        reservedSize: 30.w,
        interval: 2,

        getTitlesWidget: (value, meta) {

          const style = TextStyle(
            color: Color(0xffA3A3A3),
            fontWeight: FontWeight.w500,
            fontSize: 12,
          );
          return SideTitleWidget(
            meta: meta,
            space: 10.w,
            child: Text('${value.toInt()} K', style: style),
          );
        },
        showTitles: true),
  ),

);

FlBorderData get borderData => FlBorderData(
  show: false,
);



List<BarChartGroupData> get barGroups => [
  for(int i=0;i<6;i++)
    BarChartGroupData(
      x: i,
      barRods: [
        BarChartRodData(
            toY: 10,
            borderRadius: BorderRadius.only(topRight:Radius.circular(16.r)),
            color: AppColor.primaryColor
        ) ,
        BarChartRodData(
            toY: 8,
            borderRadius: BorderRadius.only(topRight:Radius.circular(16.r)),
            color: Color(0xff303A6E)
        )
      ],
    ),

];