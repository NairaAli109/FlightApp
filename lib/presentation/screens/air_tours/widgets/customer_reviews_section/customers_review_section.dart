import 'package:fligth_app/presentation/core/widgets/padding.dart';
import 'package:fligth_app/presentation/screens/air_tours/widgets/customer_reviews_section/review_field.dart';
import 'package:fligth_app/presentation/screens/air_tours/widgets/customer_reviews_section/reviews_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/widgets/body_header_text.dart';

class CustomerReviewsSection extends StatelessWidget {
  const CustomerReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddingDynamic(
        bottom: 20.h,
        child: AppContainer(
          width: double.infinity,
          color: AppColors.secondaryColor,
          borderRadius: 30,
          child: PaddingDynamic(
            top: 15.h,
            bottom: 20.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BodyHeaderText(
                  text: 'Customer reviews',
                ),
                const ReviewField(),
                const ReviewsButton(),
              ],
            ),
          ),
        ));
  }
}
