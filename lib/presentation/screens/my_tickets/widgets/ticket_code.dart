import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/colors.dart';

class TicketCode extends StatelessWidget {
   TicketCode({super.key,required this.ticketCode});

  String? ticketCode;

  @override
  Widget build(BuildContext context) {
    return Text(
      ticketCode!,
      style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.bodyTextColor),
    );
  }
}
