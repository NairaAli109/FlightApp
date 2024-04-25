// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';

class CustomName extends StatelessWidget {
   CustomName({super.key,required this.name});

  String? name;

  @override
  Widget build(BuildContext context) {
    return  Text(
      name!,
      style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.bodyTextColor,
        wordSpacing: 3,
        letterSpacing: 1
      ),
    );
  }
}
