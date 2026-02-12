import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/core/widgets/custom_sized_box.dart';

import '../../../core/navigation/routes_name.dart';
import '../../../core/styling/app_styles.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_text_form_field.dart';
import '../../../core/widgets/custom_arrow_back.dart';
import '../widgets/custom_rich_text.dart';

class ForgetPassScreen extends StatefulWidget {
  const ForgetPassScreen({super.key});

  @override
  State<ForgetPassScreen> createState() => _ForgetPassScreenState();
}

class _ForgetPassScreenState extends State<ForgetPassScreen> {
  late TextEditingController emailController;
  GlobalKey<FormState> formKey = GlobalKey();
@override
  void initState() {
    super.initState();
    emailController = TextEditingController();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomHeightSizedBox(height: 12),
                CustomArrowBack(),
                CustomHeightSizedBox(height: 28),
                Text(
                  'Forgot Password?',
                  style: AppStyles.titleStyle,
                ),
                CustomHeightSizedBox(height: 10),
                SizedBox(
                  width:331.w ,
                    child: Text("Don't worry! It occurs. Please enter the email address linked with your account.",style: AppStyles.hintStyle.copyWith(color: Color(0xff8391A1)),)),
                CustomHeightSizedBox(height: 32),
                CustomTextFormField(
                  hintText: 'Enter Your Email',
                  textEditingController: emailController,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Please Enter Your Email';
                    }
                    return null;
                  },
                ),
                CustomHeightSizedBox(height: 38),
                CustomButton(
                  height: 56,
                  width: 331,
                  title: 'Send Code',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      context.pushNamed(RoutesName.sendOTP);
                    }
                  },
                ),
               Spacer(),
                CustomRichText(
                  onTap: (){
                    context.pushNamed(RoutesName.login);
                  },
                  primaryColorText: 'Remember Password? ',
                  secondaryText: 'Login',
                ),
                CustomHeightSizedBox(height: 26),
              ],
            ),
          ),
        ),
      ));
  }
}
