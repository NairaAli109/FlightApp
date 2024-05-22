import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/colors.dart';
import '../../../core/widgets/padding.dart';

class SettingText extends StatelessWidget {
  SettingText({super.key, required this.text});

  String? text;

  @override
  Widget build(BuildContext context) {
    return PaddingStart(
        value: 15.w,
        child: Text(
          text!,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.bodyTextColor,
          ),
        ));
  }
}
