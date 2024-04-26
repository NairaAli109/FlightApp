// ignore_for_file: must_be_immutable

import 'package:fligth_app/presentation/core/widgets/padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/colors.dart';

class HeaderText extends StatelessWidget {
  String? text;
  double? bottomPadding;
  HeaderText({super.key, required this.text,this.bottomPadding});

  @override
  Widget build(BuildContext context) {
    return PaddingDynamic(
      bottom: bottomPadding ?? 0.h,
        child: Text(
      text!,
      style: const TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 30,
        color: AppColors.primaryColor,
      ),
    ),
    );
  }
}
