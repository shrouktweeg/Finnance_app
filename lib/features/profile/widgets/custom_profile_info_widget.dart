
import 'package:flutter/material.dart';

import '../../../core/styling/app_styles.dart' show AppStyles;
import '../../../core/widgets/custom_sized_box.dart';

class CustomProfileInfoWidget extends StatelessWidget {
  final String label;
  final String text;
  const CustomProfileInfoWidget({super.key, required this.label, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,style:AppStyles.gray12Medium500Style,),
        CustomHeightSizedBox(height: 6),
        Text(text,style:AppStyles.blackMedium500Style,),
        CustomHeightSizedBox(height: 6),
        Divider(color: Color(0xffF2F2F5),)
      ],
    );
  }
}
