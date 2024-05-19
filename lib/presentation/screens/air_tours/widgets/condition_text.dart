import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/colors.dart';
import '../../../core/widgets/padding.dart';

class ConditionText extends StatelessWidget {
  const ConditionText({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddingDynamic(
        top: 15.h,
        bottom: 30.h,
        child: const Text(
          "By continuing, you agree to the terms of use \nand privacy policy",
          style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: AppColors.primaryColor),
          textAlign: TextAlign.center,
        ));
  }
}
