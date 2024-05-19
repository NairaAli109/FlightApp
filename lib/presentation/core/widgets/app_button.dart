// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/colors.dart';

class AppButton extends StatelessWidget {
  AppButton({
    super.key,
    required this.onTap,
    required this.text,
    required this.textSize,
    this.buttonColor,
    this.buttonBorderColor,
    this.textColor,
  });

  final VoidCallback onTap;
  String text;
  double? textSize;
  Color? buttonColor;
  Color? buttonBorderColor;
  Color? textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          width: double.infinity,
          height: 50.h,
          decoration: BoxDecoration(
              color: buttonColor ?? AppColors.primaryColor,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: buttonBorderColor ?? AppColors.transparentColor)),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: textColor ?? AppColors.secondaryColor,
                  fontSize: textSize,
                  fontWeight: FontWeight.w500),
            ),
          )),
    );
  }
}
