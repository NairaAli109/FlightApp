import 'package:fligth_app/presentation/core/widgets/padding.dart';
import 'package:fligth_app/presentation/screens/air_tours/widgets/pilot_info_section/custom_image.dart';
import 'package:fligth_app/presentation/screens/air_tours/widgets/pilot_info_section/custom_name.dart';
import 'package:fligth_app/presentation/screens/air_tours/widgets/pilot_info_section/rate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../generated/assets.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/widgets/body_header_text.dart';
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
        height: 332.h,
        color: AppColors.secondaryColor,
        borderRadius: 30,
        child: PaddingDynamic(
          top: 15.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BodyHeaderText(
                text: 'Pilot Information',
              ),
              PaddingDynamic(
                  top: 12.h,
                  start: 10.w,
                  end: 10.w,
                  child: AppContainer(
                    width: 350.w,
                    height: 244.h,
                    color: AppColors.lightGreyColor,
                    borderRadius: 10,
                    child: PaddingDynamic(
                      top: 10.h,
                      start: 10.w,
                      bottom: 10.h,
                      end: 10.w,
                      child: Column(
                        children: [
                          Row(
                            children: [
                               CustomImage(image: Assets.imagesPilot,),
                              SizedBox(width: 20.w,),
                               Column(
                                 crossAxisAlignment:CrossAxisAlignment.start ,
                                 children: [
                                   CustomName(name: 'Oleg Samsonov',),
                                  SizedBox(height: 8.h,),
                                  const Rate()
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 15.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const AirplaneContainer(),
                              SizedBox(width: 20.w,),
                              const HourFlownContainer(),
                            ],
                          ),
                          SizedBox(height: 15.h,),
                          const LicenseContainer()
                        ],
                      ),
                    )
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
