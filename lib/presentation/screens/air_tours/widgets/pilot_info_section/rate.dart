import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors.dart';

class PilotRate extends StatelessWidget {
  const PilotRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          color: Colors.yellow,
          size: 17,
        ),
        const Icon(
          Icons.star,
          color: Colors.yellow,
          size: 17,
        ),
        const Icon(
          Icons.star,
          color: Colors.yellow,
          size: 17,
        ),
        const Icon(
          Icons.star,
          color: Colors.yellow,
          size: 17,
        ),
        const Icon(
          Icons.star,
          color: Colors.yellow,
          size: 17,
        ),
        SizedBox(width: 5.w),
        const Text(
          "5",
          style: TextStyle(
              fontWeight: FontWeight.w500, color: AppColors.darkGreyColor),
        )
      ],
    );
  }
}
