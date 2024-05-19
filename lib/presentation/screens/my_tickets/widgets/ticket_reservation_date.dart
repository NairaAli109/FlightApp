import 'package:fligth_app/presentation/core/widgets/padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/colors.dart';

class TicketReservationDate extends StatelessWidget {
  TicketReservationDate({super.key,required this.date});

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
