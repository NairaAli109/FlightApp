import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/widgets/padding.dart';

class FlightRoute extends StatelessWidget {
  const FlightRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddingDynamic(
        start: 20.w,
        end: 20.w,
        top: 20.h,
        child: AppContainer(
          width: 350.w,
          height: 48.h,
          color: AppColors.greyColor,
          borderRadius: 15,
          child: PaddingStart(
            value: 10.w,
            child: Row(
              children: [
                const Icon(Icons.share_location_sharp),
                SizedBox(
                  width: 15.w,
                ),
                const Text(
                  "Airfield: Bychye Polye",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: AppColors.bodyTextColor),
                )
              ],
            ),
          ),
        ));
  }
}
