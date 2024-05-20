import 'package:fligth_app/presentation/core/widgets/padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/widgets/body_header_text.dart';
import 'pilot_name_image_rate.dart';
import 'airplane_container.dart';
import 'hours_flown_container.dart';
import 'license_container.dart';

class PilotInfo extends StatelessWidget {
  const PilotInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddingDynamic(
      bottom: 20.h,
      child: AppContainer(
        width: double.infinity,
        color: AppColors.secondaryColor,
        borderRadius: 30,
        child: PaddingDynamic(
          top: 15.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BodyHeaderText(text: 'Pilot Information'),
              PaddingDynamic(
                  top: 12.h,
                  start: 10.w,
                  end: 10.w,
                  bottom: 20.h,
                  child: AppContainer(
                      width: 350.w,
                      color: AppColors.lightGreyColor,
                      borderRadius: 10,
                      child: PaddingDynamic(
                        top: 20.h,
                        start: 10.w,
                        bottom: 20.h,
                        end: 10.w,
                        child: Column(
                          children: [
                            const PilotImageNameRate(),
                            SizedBox(height: 15.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const AirplaneContainer(),
                                SizedBox(width: 20.w),
                                const HourFlownContainer(),
                              ],
                            ),
                            SizedBox(height: 15.h),
                            const LicenseContainer()
                          ],
                        ),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
