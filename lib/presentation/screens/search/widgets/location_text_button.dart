import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/colors.dart';

class LocationTextButton extends StatelessWidget {
  const LocationTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          const Icon(
            Icons.my_location,
            color: AppColors.lightBlue,
          ),
          SizedBox(
            width: 15.w,
          ),
          const Text(
            "My Location",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
