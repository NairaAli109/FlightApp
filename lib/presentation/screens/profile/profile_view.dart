import 'package:fligth_app/presentation/core/widgets/custom_white_container.dart';
import 'package:fligth_app/presentation/core/widgets/padding.dart';
import 'package:fligth_app/presentation/screens/profile/widgets/cards_tickets_section.dart';
import 'package:fligth_app/presentation/screens/profile/widgets/customer_profile_details.dart';
import 'package:fligth_app/presentation/screens/profile/widgets/notification_settings_section.dart';
import 'package:fligth_app/presentation/screens/profile/widgets/services_logout_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomerProfileDetails(),
        SizedBox(height: 15.h),
        Expanded(
            child: CustomWhiteContainer(
              topLeftRaduis: 30,
              topRightRaduis: 30,
              bottomRightRaduis: 0,
              bottomLeftRaduis: 0,
              child: PaddingDynamic(
                top: 35.h,
                start: 20.w,
                end: 20.w,
                child: const Column(
                  children: [
                    CardsTicketsSection(),
                    NotificationsSettingsSection(),
                    ServiceLogoutSection(),
                  ],
                ),
              ),
            ))
      ],
    );
  }
}

