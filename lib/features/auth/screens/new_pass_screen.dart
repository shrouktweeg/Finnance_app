import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/navigation/routes_name.dart';
import '../../../core/styling/app_styles.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_sized_box.dart';
import '../../../core/widgets/custom_text_form_field.dart';
import '../../../core/widgets/custom_arrow_back.dart';

class NewPassScreen extends StatefulWidget {
  const NewPassScreen({super.key});

  @override
  State<NewPassScreen> createState() => _NewPassScreenState();
}

class _NewPassScreenState extends State<NewPassScreen> {
  late TextEditingController passController;
  late TextEditingController confirmPassController;
  GlobalKey<FormState> formKey = GlobalKey();
  bool isHidden = true;

  @override
  void initState() {
    super.initState();
    passController = TextEditingController();
    confirmPassController=TextEditingController();
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
                  'Create new password',
                  style: AppStyles.titleStyle,
                ),
                CustomHeightSizedBox(height: 10),
                SizedBox(
                    width:331.w ,
                    child: Text("Your new password must be unique from those previously used.",style: AppStyles.hintStyle.copyWith(color: Color(0xff8391A1)),)),
                CustomHeightSizedBox(height: 32),
                CustomTextFormField(
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Please Enter Your New Password';
                    }
                    if (value.length <= 8) {
                      return 'Password is less than 8 characters';
                    }
                    return null;
                  },
                  hintText: 'New Password',
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
                CustomTextFormField(
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Please Enter Your New Password';
                    }
                    if (value.length <= 8) {
                      return 'Password is less than 8 characters';
                    }
                    if (value != passController.text) {
                      return 'Invalid Password';
                    }
                    return null;
                  },
                  hintText: 'Confirm Password',
                  textEditingController: confirmPassController,
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
                CustomHeightSizedBox(height: 38),
                CustomButton(
                  height: 56,
                  width: 331,
                  title: 'Reset Password',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      context.go(RoutesName.changedPass);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
