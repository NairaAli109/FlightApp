import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../generated/assets.dart';
import '../../../core/widgets/padding.dart';

class AirTourPlaneImg extends StatelessWidget {
  const AirTourPlaneImg({super.key});

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      height: 160.h,
      width: 350.w,
      borderRadius: 15,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          Assets.planeImg1,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
