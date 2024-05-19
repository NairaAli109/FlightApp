import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/colors.dart';

class TicketDetailsText extends StatelessWidget {
   TicketDetailsText({super.key,required this.text});


  String?text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.bodyTextColor,
      ),
    );
  }
}
