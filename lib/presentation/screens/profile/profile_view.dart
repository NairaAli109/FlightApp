import 'package:fligth_app/presentation/core/widgets/custom_white_container.dart';
import 'package:fligth_app/presentation/core/widgets/padding.dart';
import 'package:fligth_app/presentation/screens/profile/widgets/customer_profile_details.dart';
import 'package:fligth_app/presentation/screens/profile/widgets/profile_single_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomerProfileDetails(),
        const Spacer(),
        CustomWhiteContainer(
          height: 382.h,
          topLeftRaduis: 30,
          topRightRaduis: 30,
          bottomRightRaduis: 0,
          bottomLeftRaduis: 0,
          child: PaddingDynamic(
            top: 30.h,
            start: 20.w,
            end: 20.w,
            child: Column(
              children: [
                CustomSingleContainer(
                  onTap: () {},
                  text: 'Notifications',
                  iconData: Icons.notification_add,
                ),
                CustomSingleContainer(
                  onTap: () {},
                  text: 'My tickets',
                  iconData: Icons.event_note,
                ),
                CustomSingleContainer(
                  onTap: () {},
                  text: 'My cards',
                  iconData: Icons.credit_card,
                ),
                CustomSingleContainer(
                  onTap: () {},
                  text: 'Customer Service',
                  iconData: Icons.speaker_notes_outlined,
                ),
                CustomSingleContainer(
                  onTap: () {},
                  text: 'Settings',
                  iconData: Icons.settings_sharp,
                ),
                CustomSingleContainer(
                  onTap: () {},
                  text: 'Logout',
                  iconData: Icons.logout_outlined,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
