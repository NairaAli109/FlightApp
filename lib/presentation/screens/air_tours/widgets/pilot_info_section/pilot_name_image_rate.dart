import 'package:fligth_app/presentation/screens/air_tours/widgets/pilot_info_section/custom_image.dart';
import 'package:fligth_app/presentation/screens/air_tours/widgets/pilot_info_section/custom_name.dart';
import 'package:fligth_app/presentation/screens/air_tours/widgets/pilot_info_section/rate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../generated/assets.dart';

class PilotImageNameRate extends StatelessWidget {
  const PilotImageNameRate({super.key});

  @override
  Widget build(BuildContext context) {
    return                             Row(
      children: [
        CustomImage(image: Assets.imagesPilot),
        SizedBox(width: 20.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomName(name: 'Oleg Samsonov'),
            SizedBox(height: 8.h),
            const PilotRate()
          ],
        )
      ],
    );
  }
}
