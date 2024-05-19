import 'package:fligth_app/presentation/core/constants/colors.dart';
import 'package:fligth_app/presentation/core/widgets/padding.dart';
import 'package:fligth_app/presentation/screens/air_tours/widgets/book_button.dart';
import 'package:fligth_app/presentation/screens/air_tours/widgets/condition_text.dart';
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
      body: const SingleChildScrollView(
        child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                AirToursImageSection(),
                SizedBox(height: 20),
                FlightInfo(),
                PilotInfo(),
                CustomerReviewsSection(),
                ConditionText(),
                BookButton(),
              ],
            )),
      ),
    );
  }
}
