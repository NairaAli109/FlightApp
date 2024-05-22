import 'package:flutter/material.dart';

import '../constants/colors.dart';

class TourSingleContainer extends StatelessWidget {
  const TourSingleContainer({super.key,required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.secondaryColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 2,
              blurRadius: 10,
            ),
          ],
        ),
      child: child,
    );
  }
}
