import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/core/styling/app_styles.dart';
import 'package:untitled/core/widgets/custom_sized_box.dart';
import 'package:untitled/core/widgets/custom_text_form_field.dart';
import 'package:untitled/core/widgets/custom_arrow_back.dart';
import 'package:untitled/features/auth/widgets/custom_rich_text.dart';
import 'package:untitled/features/auth/widgets/social_media.dart';

import '../../../core/navigation/routes_name.dart';
import '../../../core/widgets/custom_button.dart';
import '../widgets/login_with_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController emailController;
  late TextEditingController passController;
  GlobalKey<FormState> formKey = GlobalKey();
  bool isHidden = true;
  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passController = TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.sp),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomHeightSizedBox(height: 12),
                  CustomArrowBack(),
                  CustomHeightSizedBox(height: 28),
                  SizedBox(
                    width: 280.w,
                    child: Text(
                      'Welcome back! Again!',
                      style: AppStyles.titleStyle,
                    ),
                  ),
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
                  CustomHeightSizedBox(height: 15),
                  CustomTextFormField(
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please Enter Your Password';
                      }
                      if (value.length <= 8) {
                        return 'Password is less than 8 characters';
                      }
                      return null;
                    },
                    hintText: 'Enter Your Password',
                    textEditingController: passController,
                    obscureText: isHidden,
                    onPressed: () {
                      setState(() {
                        isHidden = !isHidden;
                      });
                    },
                    icon: isHidden
                        ? Icons.remove_red_eye
                        : Icons.remove_red_eye_outlined,
                  ),
                  CustomHeightSizedBox(height: 15),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        context.pushNamed(RoutesName.forgotPass);
                      },
                      child: Text(
                        'Forgot Password ?',
                        style: AppStyles.graySemiBold600Style,
                      ),
                    ),
                  ),
                  CustomHeightSizedBox(height: 30),
                  CustomButton(
                    height: 56,
                    width: 331,
                    title: 'Login',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        context.go(RoutesName.main);
                      }
                    },
                  ),
                  CustomHeightSizedBox(height: 35),
                  LoginOrRegisterWithWidget(title: 'Or Login with'),
                  CustomHeightSizedBox(height: 22),
                  SocialMedia(),
                  CustomHeightSizedBox(height: 125),
                  CustomRichText(
                    onTap: (){
                      context.pushNamed(RoutesName.register);
                    },
                    primaryColorText: 'Don’t have an account?',
                    secondaryText: 'Register Now',
                  ),
                  CustomHeightSizedBox(height: 26),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
