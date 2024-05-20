import 'package:fligth_app/presentation/core/widgets/padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/colors.dart';

class NotificationIconContainer extends StatelessWidget {
  const NotificationIconContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      width: 46.w,
      height: 46.h,
      color: AppColors.lightPurpleColor,
      borderRadius: 4,
      child: Center(
        child: Icon(
          Icons.airplanemode_on,
          color: AppColors.secondaryColor,
        ),
      ),
    );
  }
}
