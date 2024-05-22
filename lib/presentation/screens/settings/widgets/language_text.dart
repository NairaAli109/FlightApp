import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/colors.dart';

class LanguageText extends StatelessWidget {
  const LanguageText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Text(
      "English",
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 12.sp,
        color: AppColors.darkGreyColor,
      ),
    );
  }
}
