import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/core/styling/app_styles.dart';
import 'package:untitled/core/widgets/custom_app_bar.dart';
import 'package:untitled/core/widgets/custom_sized_box.dart';
import 'package:untitled/features/profile/widgets/custom_profile_info_widget.dart';

import '../../core/constants/assets_string.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(title: 'My Profile', icon: Icons.edit),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: SingleChildScrollView(
                child:
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(child: ClipOval(child: Image.asset(ImagesString.profileAsset,width: 100.w,height: 100.h,fit: BoxFit.cover,))),
                      CustomHeightSizedBox(height: 9),
                      CustomProfileInfoWidget(label: 'Full Name',text: 'Shrouk Tweeg',),
                      CustomProfileInfoWidget(label: 'Email',text: 'shrouk.tweeg@gmail.com',),
                      CustomProfileInfoWidget(label: 'Phone Number',text: '+1 3712 3789',),
                      CustomProfileInfoWidget(label: 'Address',text: 'Cairo,Egypt',),



            ])),
          ),
        ),
      ],
    );
  }
}
