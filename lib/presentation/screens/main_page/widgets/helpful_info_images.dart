import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../generated/assets.dart';
import '../../../core/constants/colors.dart';
import '../../../core/widgets/padding.dart';

class HelpfulInfoImages extends StatelessWidget {
  const HelpfulInfoImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) => InkWell(
          onTap: () {},
          child: Stack(
            alignment: Alignment.center,
            children: [
              AppContainer(
                color: AppColors.secondaryColor,
                height: 135.h,
                width: 110.w,
                borderRadius: 15,
                borderColor: AppColors.lightBlue,
              ),
              AppContainer(
                height: 125.h,
                width: 100.w,
                borderRadius: 10,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        Assets.planeImg1,
                        height: double.infinity,
                        fit: BoxFit.fill,
                      ),
                    ),
                    PaddingDynamic(
                      top: 5,
                        start: 5,
                        child:Text(
                      "Why are the \nairplanes white?",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: AppColors.secondaryColor,
                        wordSpacing: 2,
                        letterSpacing: 1,
                      ),
                    ))
                  ],
                ),
              ),
            ],
          ),
        ),
        separatorBuilder: (context, int index) => SizedBox(
          width: 15.w,
        ),
        itemCount: 10,
      ),
    );
  }
}
