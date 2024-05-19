import 'package:fligth_app/presentation/screens/air_tour_search_result/widgets/passengers_container.dart';
import 'package:fligth_app/presentation/screens/air_tour_search_result/widgets/rate_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/widgets/padding.dart';
import 'air_field_container.dart';

class AirTourDetails extends StatelessWidget {
  const AirTourDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddingDynamic(
        start: 10.w,
        bottom: 10.h,
        child: const Row(
          children: [
            TourRateContainer(),
            AirFieldContainer(),
            PassengersContainer()
          ],
        ));
  }
}
