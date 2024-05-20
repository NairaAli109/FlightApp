// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';

class PilotDetailsHeaderText extends StatelessWidget {
   PilotDetailsHeaderText({super.key, required this.headerText});

  String?headerText;

  @override
  Widget build(BuildContext context) {
    return Text(
      headerText!,
      style: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w400,
          color: AppColors.darkGreyColor),
    );
  }
}
