import 'package:doctors_appointments/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({super.key, this.contentPadding, required this.hintText, this.suffixIcon, this.focusedBorder, this.enabledBorder, this.hintStyle, this.inputTextStyle, this.isObscureText, this.backgroundColor});
  final EdgeInsetsGeometry? contentPadding;
final String hintText;
final Widget? suffixIcon;
final InputBorder? focusedBorder;
final InputBorder? enabledBorder;
final TextStyle? hintStyle;
  final TextStyle? inputTextStyle;
final bool? isObscureText;
final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
isDense: true,
          contentPadding:contentPadding ?? EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 10.h,
          ),

          focusedBorder:focusedBorder ??OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorsManager.mainBlue,
              width: 1.3

            ),
            borderRadius: BorderRadius.circular(16)
          ) ,
        enabledBorder:enabledBorder ??OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorsManager.lightGray,
            width: 1.3
          ),
           borderRadius: BorderRadius.circular(16)
        ) ,
        hintStyle: hintStyle ??TextStyles.font14LightGrayRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
        fillColor:backgroundColor?? ColorsManager.moreLightGray,
        filled: true,

      ),
      obscureText: isObscureText??false,
      style: TextStyles.font14DarkBlueMedium,
    );
  }
}
