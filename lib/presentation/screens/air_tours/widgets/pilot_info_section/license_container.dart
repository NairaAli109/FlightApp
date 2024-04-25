import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/widgets/padding.dart';

class LicenseContainer extends StatelessWidget {
  const LicenseContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      width: 318.w,
      height: 70.h,
      color: AppColors.greyColor,
      borderRadius: 4,
      child:PaddingDynamic(
        top: 10.h,
        start: 10.w,
        bottom: 10.h,
        end: 10.w,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "License",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: AppColors.darkGreyColor
              ),
            ),
            Text(
              "Commercial Pilot's License - CPL",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.bodyTextColor
              ),
            ),
          ],
        ),
      ) ,
    );
  }
}
