import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:untitled/core/styling/app_colors.dart';

import '../../../core/navigation/routes_name.dart';
import '../../../core/styling/app_styles.dart';
import '../../../core/widgets/custom_arrow_back.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_sized_box.dart';
import '../widgets/custom_rich_text.dart';

class OTPVerifyScreen extends StatefulWidget {
  const OTPVerifyScreen({super.key});

  @override
  State<OTPVerifyScreen> createState() => _OTPVerifyScreenState();
}

class _OTPVerifyScreenState extends State<OTPVerifyScreen> {
  late TextEditingController otpController;
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    otpController = TextEditingController();
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
                Text('OTP Verification', style: AppStyles.titleStyle),
                CustomHeightSizedBox(height: 10),
                SizedBox(
                  width: 331.w,
                  child: Text(
                    "Enter the verification code we just sent on your email address.",
                    style: AppStyles.hintStyle.copyWith(
                      color: Color(0xff8391A1),
                    ),
                  ),
                ),
                CustomHeightSizedBox(height: 32),
                PinCodeTextField(
                  validator: (value){
                    if(value==null||value.trim().isEmpty){
                      return "Please Enter OTP";
                    }
                    return null;
                  },
                  appContext: context,
                  length: 4,
                  keyboardType: TextInputType.number,
                  controller: otpController,
                  backgroundColor: Color(0xffF7F8F9),
                  cursorColor: AppColor.primaryColor,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(8.r),
                    activeColor: Color(0xff202955),
                    activeFillColor: Colors.white,
                    activeBorderWidth: 1.2.w,
                    fieldHeight: 65.h,
                    fieldWidth: 70.w,
                    selectedColor: AppColor.primaryColor,
                    selectedFillColor: Colors.white,
                    inactiveColor: Color(0xffE8ECF4),
                    inactiveFillColor: Color(0xffF7F8F9),
                  ),
                  enableActiveFill: true,
                  enabled: true,

                  textStyle: AppStyles.titleStyle.copyWith(fontSize: 22.sp),
                ),
                CustomHeightSizedBox(height: 38),
                CustomButton(
                  height: 56,
                  width: 331,
                  title: 'Verify',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      context.push(RoutesName.newPass);
                    }
                  },
                ),
                Spacer(),
                CustomRichText(
                  onTap: (){
                  },
                  primaryColorText: "Didn’t receive code? ",
                  secondaryText: 'Resend',
                ),
                CustomHeightSizedBox(height: 26),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
