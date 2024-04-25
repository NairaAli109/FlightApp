import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../generated/assets.dart';
import '../../../../core/widgets/padding.dart';

class AirTourImage extends StatelessWidget {
  const AirTourImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      height: 243.h,
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset(
          Assets.imagesExploreHelpImg1,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
