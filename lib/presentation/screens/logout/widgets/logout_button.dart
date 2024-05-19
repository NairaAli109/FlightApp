import 'package:fligth_app/presentation/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/padding.dart';

class LogoutButton extends StatefulWidget {
  const LogoutButton({super.key});

  @override
  State<LogoutButton> createState() => _LogoutButtonState();
}

class _LogoutButtonState extends State<LogoutButton> {
  @override
  Widget build(BuildContext context) {
    return PaddingHorizontal(
        value: 20.w,
        child: AppButton(
          onTap: () {},
          text: 'Logout',
          textSize: 16.sp,
          textColor: AppColors.primaryColor,
          buttonColor: AppColors.secondaryColor,
          buttonBorderColor: AppColors.primaryColor,
        ));
  }
}
