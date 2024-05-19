// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/colors.dart';
import '../../../core/widgets/padding.dart';

class CustomSingleContainer extends StatelessWidget {
  CustomSingleContainer(
      {super.key,
      required this.onTap,
      required this.text,
      required this.iconData});

  final VoidCallback onTap;
  String? text;
  IconData? iconData;

  @override
  Widget build(BuildContext context) {
    return PaddingDynamic(
      start: 10.w,
      top: 10.h,
      end: 10.w,
      bottom: 10.h,
      child: InkWell(
          onTap: onTap,
          child:  Row(
            children: [
              Icon(
                iconData,
                color: AppColors.primaryColor,
              ),
              SizedBox(width: 15.w),
              Text(
                text!,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1,
                ),
              ),
              const Spacer(),
               const Icon(Icons.arrow_forward_ios),
            ],
          ),
      ),
    );
  }
}
