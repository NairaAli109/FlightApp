import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/colors.dart';
import '../../../core/widgets/padding.dart';

class TourLocationField extends StatelessWidget {
  const TourLocationField({
    super.key,
    required this.onTap,
    required this.text,
    required this.iconData,
    this.topPadding,
    this.bottomPadding,
  });

  final VoidCallback onTap;
  final String? text;
  final IconData? iconData;
  final double? topPadding;
  final double? bottomPadding;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PaddingDynamic(
        start: 20.w,
        top: topPadding ?? 0.h,
        bottom: bottomPadding ?? 0.h,
        child: InkWell(
          onTap: onTap,
          child: Row(
            children: [
              Icon(iconData!),
              const SizedBox(width: 10),
              Text(
                text!,
                style: TextStyle(
                  color: AppColors.lightGrey,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
