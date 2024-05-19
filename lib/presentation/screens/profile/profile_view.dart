import 'package:fligth_app/presentation/core/widgets/custom_white_container.dart';
import 'package:fligth_app/presentation/core/widgets/padding.dart';
import 'package:fligth_app/presentation/screens/profile/widgets/customer_profile_details.dart';
import 'package:fligth_app/presentation/screens/profile/widgets/profile_setting_containers.dart';
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
            child: Column(
              children: [
                ProfileSettingContainers(
                  text1: 'My cards',
                  iconData1: Icons.credit_card,
                  onTap1: () {},
                  text2: 'My tickets',
                  iconData2: Icons.event_note,
                  onTap2: () {},
                ),
                ProfileSettingContainers(
                  text1: 'Notifications',
                  iconData1: Icons.notification_add,
                  onTap1: () {},
                  text2: 'Settings',
                  iconData2: Icons.settings_sharp,
                  onTap2: () {},
                ),
                ProfileSettingContainers(
                  text1: 'Customer Service',
                  iconData1: Icons.speaker_notes_outlined,
                  onTap1: () {},
                  text2: 'Logout',
                  iconData2: Icons.logout_outlined,
                  onTap2: () {},
                ),
              ],
            ),
          ),
        ))
      ],
    );
  }
}
