import 'package:flutter/material.dart';
import '../constants/colors.dart';

class AppTextFormField extends StatelessWidget {
  final String labelText;
  final TextStyle? inputTextStyle;
  final TextStyle? labelStyle;
  final bool? isObscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final Color? backgroundColor;
  final TextEditingController controller;
  final TextInputType type;
  final String? Function(String?) validator;

  const AppTextFormField({
    super.key,
    required this.labelText,
    this.inputTextStyle,
    this.labelStyle,
    this.isObscureText,
    this.suffixIcon,
    this.focusedBorder,
    this.enabledBorder,
    this.backgroundColor,
    this.prefixIcon,
    required this.controller,
    required this.type,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      validator: validator,
      obscureText: isObscureText ?? false,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        labelText: labelText,
        labelStyle: labelStyle ?? TextStyle(color: AppColors.lightGrey),
        suffixIcon: suffixIcon,
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
                // borderRadius: BorderRadius.circular(8),
                borderSide:  BorderSide(
                  color: AppColors.lightGrey!,
                  width: 1.3,
                )),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide:  BorderSide(
                  color:AppColors.lightGrey!,
                  width: 1.3,
                )),
      ),
    );
  }
}
