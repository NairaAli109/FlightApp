import 'package:fligth_app/presentation/core/widgets/padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/colors.dart';
import '../../my_tickets/widgets/ticket_airfield.dart';
import 'notification_header_text.dart';
import 'notification_icon_container.dart';

class NotificationsContainer extends StatelessWidget {
  const NotificationsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      width: double.infinity,
      height: 80.h,
      color: AppColors.greyColor,
      borderRadius: 8,
      child: PaddingDynamic(
        start: 12.w,
        top: 12.w,
        end: 12.w,
        bottom: 12.w,
        child: Row(
          children: [
            const NotificationIconContainer(),
            PaddingStart(
                value: 20.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const NotificationsHeaderText(),
                    TicketAirField(
                      airFieldName: 'Bychye Polye',
                      flightDate: 'July 30th',
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
