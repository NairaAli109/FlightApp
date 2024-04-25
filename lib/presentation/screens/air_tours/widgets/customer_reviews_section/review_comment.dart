import 'package:flutter/material.dart';
import '../../../../core/constants/colors.dart';

class ReviewComment extends StatelessWidget {
  const ReviewComment({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "The flights are excellent! The airfield is located in a picturesque place and there is a lot to admire from above.",
      style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.darkGreyColor,
          wordSpacing: 3,
          letterSpacing: 1
      ),
    );
  }
}
