// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';

class ReviewDate extends StatelessWidget {
   ReviewDate({super.key,required this.date});

  String?date;

  @override
  Widget build(BuildContext context) {
    return     Text(
      date!,
      style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 12,
          color: AppColors.lightGrey
      ),
    );
  }
}
