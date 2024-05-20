// ignore_for_file: must_be_immutable

import 'package:fligth_app/presentation/core/widgets/padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/colors.dart';

class DateText extends StatelessWidget {
  DateText({super.key,required this.date});

  String?date;

  @override
  Widget build(BuildContext context) {
    return PaddingDynamic(
      bottom: 10.h,
        child: Text(
      date!,
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
        color: AppColors.lightGrey,
      ),
    ));
  }
}
