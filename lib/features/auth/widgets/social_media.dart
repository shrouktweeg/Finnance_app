import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/features/auth/widgets/custom_container.dart';

import '../../../core/constants/assets_string.dart';
import '../../../core/styling/app_colors.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomContainer(radius: 8, backgroundColor: Colors.white, height: 56, width: 105,borderColor: AppColor.textFieldBorderColor, child: SvgPicture.asset(IconsString.facebookIcon),),
        CustomContainer(radius: 8, backgroundColor: Colors.white, height: 56, width: 105,borderColor: AppColor.textFieldBorderColor, child: SvgPicture.asset(IconsString.googleIcon),),
        CustomContainer(radius: 8, backgroundColor: Colors.white, height: 56, width: 105,borderColor: AppColor.textFieldBorderColor, child: SvgPicture.asset(IconsString.appleIcon),),
      ],
    );
  }
}
