import 'package:fligth_app/presentation/core/widgets/padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/colors.dart';

class TicketName extends StatelessWidget {
   TicketName({super.key,required this.ticketName,this.textSize});

  String?ticketName;
  double?textSize;

  @override
  Widget build(BuildContext context) {
    return PaddingDynamic(
      top: 10.h,
        bottom: 5.h,
        child: Text(
      ticketName!,
      style: TextStyle(
          fontSize:textSize ?? 12.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.bodyTextColor),
    ));
  }
}
