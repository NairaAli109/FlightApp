// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/widgets/padding.dart';

class FlightDurationButtons extends StatelessWidget {
  FlightDurationButtons({super.key, required this.text});

  String? text;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      height: 70.h,
      width: double.infinity,
      child: PaddingDynamic(
          top: 10.h,
          start: 20.w,
          bottom: 25.h,
          child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => InkWell(
                onTap: (){},
                child: AppContainer(
                  width: 71.w,
                  color: AppColors.greyColor,
                  borderRadius: 8,
                  child: Center(
                    child: Text(
                      text!,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: AppColors.darkGreyColor,
                      ),
                    ),
                  ),
                ),
              ),
              separatorBuilder: (context, index) => SizedBox(
                    width: 10.w,
                  ),
              itemCount: 10)),
    );
  }
}
