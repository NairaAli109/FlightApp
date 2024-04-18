// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class MainPageWhiteContainer extends StatelessWidget {
  MainPageWhiteContainer({
    super.key,
    required this.child,
    required this.topLeftRaduis,
    required this.topRightRaduis,
    required this.bottomRightRaduis,
    required this.bottomLeftRaduis,
    this.height,
  });

  double bottomLeftRaduis = 0;
  double bottomRightRaduis = 0;
  double topLeftRaduis = 0;
  double topRightRaduis = 0;
  Widget child;
  double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(bottomLeftRaduis),
          bottomRight: Radius.circular(bottomRightRaduis),
          topRight: Radius.circular(topRightRaduis),
          topLeft: Radius.circular(topLeftRaduis),
        ),
      ),
      child: child,
    );
  }
}
