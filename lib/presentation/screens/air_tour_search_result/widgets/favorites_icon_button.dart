import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/colors.dart';
import '../../../core/widgets/padding.dart';

class FavoritesIconButton extends StatelessWidget {
   FavoritesIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddingDynamic(
        top:  10.h,
        end: 10.w,
        child: CircleAvatar(
          radius: 17,
          backgroundColor: AppColors.secondaryColor.withOpacity(0.5),
          child: Icon(
            Icons.favorite_outline,
            color: AppColors.secondaryColor.withOpacity(0.7),
          ),
        ));
  }
}
