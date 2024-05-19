import 'package:flutter/material.dart';
import '../../../../core/constants/colors.dart';

class PilotDetailsText extends StatelessWidget {
   PilotDetailsText({super.key,required this.text});

  String?text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: AppColors.bodyTextColor),
    );
  }
}
