import 'package:fligth_app/presentation/core/widgets/padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoutText extends StatelessWidget {
  const LogoutText({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddingDynamic(
      bottom: 70.h,
        child: Text(
      "Do you want to log out of the app?",
      style: TextStyle(
        fontSize: 17.sp,
        fontWeight: FontWeight.w600,
      ),
    ));
  }
}
