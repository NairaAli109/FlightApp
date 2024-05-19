import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/colors.dart';
import '../../../core/widgets/padding.dart';

class PassengersContainer extends StatelessWidget {
  const PassengersContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      color: AppColors.secondaryColor,
      borderRadius: 15,
      child: PaddingHorizontal(
        value: 5.w,
        child: Text(
          "Passengers: 4",
          style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
