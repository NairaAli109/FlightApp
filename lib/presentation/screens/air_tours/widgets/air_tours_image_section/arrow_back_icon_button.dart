import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/widgets/padding.dart';

class ArrowBackIconButton extends StatefulWidget {
  const ArrowBackIconButton({super.key});

  @override
  State<ArrowBackIconButton> createState() => _ArrowBackIconButtonState();
}

class _ArrowBackIconButtonState extends State<ArrowBackIconButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            Navigator.pop(context);
          });
        },
        icon: PaddingDynamic(
          top: 50.h,
          start: 10.w,
          child: Icon(
            Icons.arrow_back_sharp,
            color: AppColors.secondaryColor,
            size: 24,
          ),
        ));
  }
}
