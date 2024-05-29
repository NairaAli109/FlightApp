import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';
import 'padding.dart';

class DatePickerFiled extends StatelessWidget {
  const DatePickerFiled({super.key, required this.onTap, required this.text});

  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PaddingDynamic(
        bottom: 15.h,
        start: 22.w,
        child: InkWell(
          onTap: onTap,
          child: Row(
            children: [
              const Icon(Icons.date_range_sharp),
              const SizedBox(width: 10),
              Text(
                text,
                style: TextStyle(
                    color: AppColors.lightGrey,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
