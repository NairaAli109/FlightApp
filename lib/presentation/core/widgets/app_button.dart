// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/colors.dart';

class AppButton extends StatelessWidget {
   AppButton({super.key,required this.onTap, required this.text});

  final VoidCallback onTap;
  String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          width: double.infinity,
          height: 50.h,
          decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: AppColors.secondaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          )),
    );
  }
}
