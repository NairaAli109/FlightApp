import 'package:fligth_app/presentation/screens/air_tours/widgets/customer_reviews_section/review_comment.dart';
import 'package:fligth_app/presentation/screens/air_tours/widgets/customer_reviews_section/review_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../generated/assets.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/widgets/padding.dart';
import '../pilot_info_section/custom_image.dart';
import '../pilot_info_section/custom_name.dart';
import '../pilot_info_section/rate.dart';

class ReviewField extends StatelessWidget {
  const ReviewField({super.key});

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      width: double.infinity,
      child:  PaddingDynamic(
        top: 15.h,
          start: 20.w,
          end: 20.w,
          child:Container(
              width: 350.w,
              height: 196.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.secondaryColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 2,
                    blurRadius: 10,
                  ),
                ],
              ),
              child:PaddingDynamic(
                top: 10.h,
                start: 10.w,
                child:  Column(
                  children: [
                    Row(
                      children: [
                        CustomImage(image: Assets.imagesPilot,),
                        SizedBox(width: 15.w,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomName(name: 'Ivan',),
                            SizedBox(height: 8.h,),
                            ReviewDate(date: 'May , 21 , 2022',),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 15.h,),
                    const Rate(),
                    SizedBox(height: 15.h,),
                    const ReviewComment(),
                  ],
                ),
              )
          )
      ),
    );
  }
}
