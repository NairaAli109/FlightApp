import 'package:fligth_app/presentation/screens/air_tours/widgets/pilot_info_section/pilot_details_header_text.dart';
import 'package:fligth_app/presentation/screens/air_tours/widgets/pilot_info_section/pilot_details_text.dart';
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
      color: AppColors.greyColor,
      borderRadius: 4,
      child:PaddingDynamic(
        top: 10.h,
        start: 10.w,
        bottom: 10.h,
        end: 10.w,
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PilotDetailsHeaderText(headerText: "License"),
            PilotDetailsText(text: "Commercial Pilot's License - CPL"),
          ],
        ),
      ) ,
    );
  }
}
