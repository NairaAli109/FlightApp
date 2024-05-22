import 'package:fligth_app/presentation/core/constants/colors.dart';
import 'package:fligth_app/presentation/core/widgets/padding.dart';
import 'package:fligth_app/presentation/screens/settings/widgets/setting_container.dart';
import 'package:fligth_app/presentation/screens/settings/widgets/switch_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      appBar: AppBar(
        title: const Text("Settings"),
        centerTitle: true,
      ),
      body: PaddingDynamic(
        top: 50.h,
        start: 20.w,
        end: 20.w,
        bottom: 20.h,
        child: Column(
          children: [
            SettingContainer(
              iconData: Icons.language,
              text: 'Application language',
              languageText: true,
              switchButton: false,
            ),
            SettingContainer(
              iconData: Icons.notification_add,
              text: 'Push notifications',
              languageText: false,
              switchButton: true,
            ),
            SettingContainer(
              iconData: Icons.airplanemode_active,
              text: 'About us',
              languageText: false,
              switchButton: false,
            ),
          ],
        ),
      ),
    );
  }
}
