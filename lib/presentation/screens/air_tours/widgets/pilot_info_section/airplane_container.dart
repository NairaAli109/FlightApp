import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/widgets/padding.dart';

class AirplaneContainer extends StatelessWidget {
  const AirplaneContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return    AppContainer(
        width: 149.w,
        height: 61.h,
        color: AppColors.greyColor,
        borderRadius: 4,
        child: PaddingDynamic(
          top: 5.h,
          start: 5.w,
          bottom: 5.h,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Airplane",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: AppColors.darkGreyColor
                ),
              ),
              Text(
                "Cessna 172",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.bodyTextColor
                ),
              ),
            ],
          ),
        )
    );
  }
}
