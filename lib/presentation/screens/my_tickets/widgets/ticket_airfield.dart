import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/colors.dart';

class TicketAirField extends StatelessWidget {
   TicketAirField({super.key,required this.airFieldName,required this.flightDate});

  String?airFieldName;
  String?flightDate;

  @override
  Widget build(BuildContext context) {
    return Text(
      "Airfield: $airFieldName , $flightDate",
      style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 12.sp,
          color: AppColors.lightGrey),
    );
  }
}
