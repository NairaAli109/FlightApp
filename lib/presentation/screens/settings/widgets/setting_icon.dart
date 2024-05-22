import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class SettingIcon extends StatelessWidget {
  SettingIcon({super.key, required this.iconData});

  IconData? iconData;

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconData!,
      color: AppColors.primaryColor,
    );
  }
}
