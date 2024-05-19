import 'package:fligth_app/presentation/core/widgets/padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/widgets/body_header_text.dart';
import 'flight_info_section_buttons.dart';
import 'flight_info_route_container.dart';
import 'flight_info_tour_stepper.dart';

class FlightInfo extends StatelessWidget {
  const FlightInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddingDynamic(
      bottom: 20.h,
      child: AppContainer(
        width: double.infinity,
        // height: 750.h,
        color: AppColors.secondaryColor,
        borderRadius: 30,
        child: PaddingDynamic(
          top: 20.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BodyHeaderText(text: 'Flight Duration'),
              FlightDurationButtons(text: '20 min'),
              BodyHeaderText(text: 'Start of Flight'),
              FlightDurationButtons(text: '7:00'),
              BodyHeaderText(text: 'Flight Route'),
              const FlightRouteAirFieldContainer(),
              const FlightTourStepper(),
            ],
          ),
        ),
      ),
    );
  }
}
