import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';

class MobileNumberText extends StatelessWidget {
  const MobileNumberText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "+20 155 336 20 01",
      style: TextStyle(
        color: AppColors.lightGrey,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      ),
    );
  }
}
