import 'package:fligth_app/presentation/screens/air_tours/widgets/pilot_info_section/pilot_details_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/widgets/padding.dart';
import 'pilot_details_header_text.dart';

class HourFlownContainer extends StatelessWidget {
  const HourFlownContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return AppContainer(
        width: 149.w,
        color: AppColors.greyColor,
        borderRadius: 4,
        child: PaddingDynamic(
          top: 5.h,
          start: 5.w,
          bottom: 5.h,
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PilotDetailsHeaderText(headerText: "Hours flown"),
              PilotDetailsText(text: "1 250 hours"),
            ],
          ),
        )
    );
  }
}
