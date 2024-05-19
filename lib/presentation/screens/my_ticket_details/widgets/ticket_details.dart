import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/colors.dart';
import '../../../core/widgets/padding.dart';
import 'details_single_container.dart';

class TicketDetails extends StatelessWidget {
  const TicketDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddingDynamic(
        top: 15.h,
        bottom: 15.h,
        child: Column(
          children: [
            Row(
              children: [
                DetailsSingleContainer(title: "Date of flight :", text: "30.07.2022",),
                SizedBox(width: 15.w),
                DetailsSingleContainer(title: "Airfield :", text: "Bychye Polye",),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                DetailsSingleContainer(title: "Departure time :", text: "13:30",),
                SizedBox(width: 15.w),
                DetailsSingleContainer(title: "Flight duration :", text: "50 min",),
              ],
            ),
          ],
        ));
  }
}
