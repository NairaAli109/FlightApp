// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/colors.dart';

class TicketDetailsTitleText extends StatelessWidget {
   TicketDetailsTitleText({super.key,required this.title});

  String?title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      style: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.lightGrey,
      ),
    );
  }
}
