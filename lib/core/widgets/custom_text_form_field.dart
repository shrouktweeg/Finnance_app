import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/core/styling/app_colors.dart';
import 'package:untitled/core/styling/app_styles.dart';

class CustomTextFormField extends StatefulWidget {
 final TextEditingController? textEditingController;
 final String? hintText;
 final double? borderRadius;
 final void Function()? onPressed;
final IconData? icon;
 final bool? obscureText ;
 final String? Function(String?)? validator;
  const CustomTextFormField({super.key, this.textEditingController, this.hintText, this.borderRadius, this.onPressed, this.icon, this.obscureText, this.validator,});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:widget.textEditingController,
      obscureText: widget.obscureText??false,
      validator: widget.validator,
      decoration: InputDecoration(
        contentPadding: EdgeInsetsGeometry.only(top:18.r,left: 18.r),
        filled: true,
        fillColor: AppColor.textFieldFillColor,
        hint: Text(widget.hintText??'',style: AppStyles.hintStyle,),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius??8.r),
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedBorder:  OutlineInputBorder(
      borderRadius: BorderRadius.circular(widget.borderRadius??8.r),
      borderSide: BorderSide(color: AppColor.primaryColor),
    ),
        border:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius??8.r),
          borderSide: BorderSide(color: AppColor.textFieldBorderColor),
        ),
        enabledBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius??8.r),
          borderSide: BorderSide(color: AppColor.textFieldBorderColor),
        ),
        suffixIcon: IconButton(
          onPressed: widget.onPressed,
          icon: Icon(
            widget.icon,
            color: AppColor.darkGrey,
          ),
        ),      ) );
  }
}
