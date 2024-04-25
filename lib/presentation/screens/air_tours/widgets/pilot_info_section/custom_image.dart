// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widgets/padding.dart';

class CustomImage extends StatelessWidget {
   CustomImage({super.key,required this.image});

  String? image;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      width: 52.w,
      height: 52.h,
      borderRadius: 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Image.asset(image!),
      ),
    );
  }
}
