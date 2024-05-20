import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/colors.dart';

class NotificationsHeaderText extends StatelessWidget {
  const NotificationsHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Air tour has been processed",
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16.sp,
        color: AppColors.bodyTextColor,
      ),
    );
  }
}
