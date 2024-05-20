// ignore_for_file: must_be_immutable

import 'package:fligth_app/presentation/screens/profile/widgets/profile_single_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/colors.dart';
import '../../../core/widgets/padding.dart';

class ProfileSettingContainers extends StatelessWidget {
  ProfileSettingContainers({
    super.key,
    required this.text1,
    required this.iconData1,
    required this.onTap1,
    required this.text2,
    required this.iconData2,
    required this.onTap2,
  });

  String? text1;
  IconData? iconData1;
  final VoidCallback onTap1;
  String? text2;
  IconData? iconData2;
  final VoidCallback onTap2;

  @override
  Widget build(BuildContext context) {
    return PaddingDynamic(
      bottom: 15.h,
      child: AppContainer(
        width: double.infinity,
        color: AppColors.greyColor,
        borderRadius: 10,
        child: Column(
          children: [
            CustomSingleContainer(
              onTap: onTap1,
              text: text1,
              iconData: iconData1,
            ),
            Divider(
              indent: 50.w,
            ),
            CustomSingleContainer(
              onTap: onTap2,
              text: text2,
              iconData: iconData2,
            ),
          ],
        ),
      ),
    );
  }
}
