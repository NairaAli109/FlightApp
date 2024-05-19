import 'package:fligth_app/presentation/core/constants/colors.dart';
import 'package:fligth_app/presentation/core/widgets/app_button.dart';
import 'package:fligth_app/presentation/core/widgets/padding.dart';
import 'package:fligth_app/presentation/screens/logout/widgets/logout_button.dart';
import 'package:fligth_app/presentation/screens/logout/widgets/logout_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoutView extends StatefulWidget {
  const LogoutView({super.key});

  @override
  State<LogoutView> createState() => _LogoutViewState();
}

class _LogoutViewState extends State<LogoutView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.h,
      width: double.infinity,
      decoration:  BoxDecoration(
        color: AppColors.secondaryColor,
          borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(13),
        topRight: Radius.circular(13),
      )),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LogoutText(),
          LogoutButton(),
        ],
      ),
    );
  }
}
