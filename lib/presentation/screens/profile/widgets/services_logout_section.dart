import 'package:fligth_app/presentation/screens/profile/widgets/profile_setting_containers.dart';
import 'package:flutter/material.dart';

import '../../customer_services/customer_service_view.dart';
import '../../logout/logout_view.dart';

class ServiceLogoutSection extends StatefulWidget {
  const ServiceLogoutSection({super.key});

  @override
  State<ServiceLogoutSection> createState() => _ServiceLogoutSectionState();
}

class _ServiceLogoutSectionState extends State<ServiceLogoutSection> {

  void logoutBottomSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        useSafeArea: true,
        enableDrag: true,
        isDismissible: true,
        context: context,
        builder: (context) => const LogoutView());
  }

  @override
  Widget build(BuildContext context) {
    return                 ProfileSettingContainers(
      text1: 'Customer Service',
      iconData1: Icons.speaker_notes_outlined,
      onTap1: () {
        setState(() {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                  const CustomerServiceView()));
        });
      },
      text2: 'Logout',
      iconData2: Icons.logout_outlined,
      onTap2: () {
        setState(() {
          logoutBottomSheet();
        });
      },
    );
  }
}
