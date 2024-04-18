// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../constants/colors.dart';

class HeaderText extends StatelessWidget {
  String? text;
  HeaderText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style:  const TextStyle (
        fontWeight: FontWeight.w700,
        fontSize: 30,
        color: AppColors.primaryColor,
      ),
    );
  }
}
