import 'package:fligth_app/presentation/core/constants/colors.dart';
import 'package:fligth_app/presentation/core/widgets/padding.dart';
import 'package:fligth_app/presentation/screens/air_tours/widgets/customer_reviews_section/customers_review_section.dart';
import 'package:fligth_app/presentation/screens/air_tours/widgets/air_tours_image_section/air_tours_image_section.dart';
import 'package:fligth_app/presentation/screens/air_tours/widgets/flight_info_section/flight_info_section.dart';
import 'package:fligth_app/presentation/screens/air_tours/widgets/pilot_info_section/pilot_info_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/widgets/app_button.dart';
import '../checkout_payment/payment_view.dart';

class AirToursView extends StatelessWidget {
  const AirToursView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body:  SingleChildScrollView(
          child:SizedBox(
            width: double.infinity,
              child:Column(
                children: [
                  const AirToursImageSection(),
                  const SizedBox(
                    height: 20,
                  ),
                  const FlightInfo(),
                  const PilotInfo(),
                  const CustomerReviewsSection(),
                  PaddingDynamic(
                    top: 15.h,
                      bottom: 30.h,
                      child: const Text(
                    "By continuing, you agree to the terms of use \nand privacy policy",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: AppColors.primaryColor
                    ),
                    textAlign: TextAlign.center,
                  )
                  ),
                  PaddingDynamic(
                    start: 20.w,
                      end: 20.w,
                      bottom: 40.h,
                      child: AppButton(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const PaymentView()));
                    },
                    text: 'Book for 10,000 ₽', textSize: 16,
                  )
                  )
                ],
              )
          ),
        ),
    );
  }
}
