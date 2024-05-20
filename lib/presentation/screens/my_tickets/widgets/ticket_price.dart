// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/colors.dart';
import '../../../core/widgets/padding.dart';

class TicketPrice extends StatelessWidget {
   TicketPrice({super.key,required this.ticketPrice});

  String?ticketPrice;

  @override
  Widget build(BuildContext context) {
    return   AppContainer(
      width:72.w ,
      height: 25.h,
      color: AppColors.primaryColor,
      borderRadius: 50,
      child: Center(
        child: Text(
          ticketPrice!,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12.sp,
              color: AppColors.secondaryColor
          ),
        ),
      ),
    );
  }
}
