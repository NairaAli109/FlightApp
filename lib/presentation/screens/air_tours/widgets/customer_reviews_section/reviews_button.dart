import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/widgets/padding.dart';
import '../../../reviews/reviews_view.dart';

class ReviewsButton extends StatefulWidget {
  const ReviewsButton({super.key});

  @override
  State<ReviewsButton> createState() => _ReviewsButtonState();
}

class _ReviewsButtonState extends State<ReviewsButton> {
  @override
  Widget build(BuildContext context) {
    return PaddingDynamic(
        start: 20.w,
        end: 20.w,
        top: 20.h,
        child:InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const ReviewsView()));
          },
          child: AppContainer(
              width: 350.w,
              height: 50.h,
              borderRadius: 8,
              borderColor: AppColors.primaryColor,
              child: const Center(
                child: Text(
                  "All reviews",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: AppColors.primaryColor
                  ),
                ),
              )
          ),
        )
    );
  }
}
