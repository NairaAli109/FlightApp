import 'package:fligth_app/presentation/screens/profile/widgets/profile_setting_containers.dart';
import 'package:flutter/material.dart';

import '../../../settings/settings_view.dart';
import '../../notifications/notifications_view.dart';

class NotificationsSettingsSection extends StatefulWidget {
  const NotificationsSettingsSection({super.key});

  @override
  State<NotificationsSettingsSection> createState() =>
      _NotificationsSettingsSectionState();
}

class _NotificationsSettingsSectionState
    extends State<NotificationsSettingsSection> {
  @override
  Widget build(BuildContext context) {
    return ProfileSettingContainers(
      text1: 'Notifications',
      iconData1: Icons.notification_add,
      onTap1: () {
        setState(() {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const NotificationsView()));
        });
      },
      text2: 'Settings',
      iconData2: Icons.settings_sharp,
      onTap2: () {
        setState(() {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SettingsView()));
        });
      },
    );
  }
}
