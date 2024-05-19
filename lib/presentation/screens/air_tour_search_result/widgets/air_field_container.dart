import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/colors.dart';
import '../../../core/widgets/padding.dart';

class AirFieldContainer extends StatelessWidget {
  const AirFieldContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddingEnd(
        value: 10.w,
        child: AppContainer(
            color: AppColors.secondaryColor,
            borderRadius: 15,
            child: PaddingHorizontal(
              value: 5.w,
              child: Text(
                "Airfield: Selzo",
                style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400),
              ),
            )));
  }
}
