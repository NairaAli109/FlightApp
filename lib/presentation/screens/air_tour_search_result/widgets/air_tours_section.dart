import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/padding.dart';
import 'air_tours_list_item.dart';

class AirToursList extends StatelessWidget {
  const AirToursList({super.key});

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      width: double.infinity,
      child: PaddingDynamic(
          start: 20.w,
          end: 20.w,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => const AirToursListItem(),
            itemCount: 10,
            separatorBuilder: (BuildContext context, int index) =>
                SizedBox(height: 20.h),
          )),
    );
  }
}
