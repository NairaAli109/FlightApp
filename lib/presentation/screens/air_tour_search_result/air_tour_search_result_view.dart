import 'package:fligth_app/presentation/core/constants/colors.dart';
import 'package:fligth_app/presentation/core/widgets/body_header_text.dart';
import 'package:fligth_app/presentation/screens/air_tour_search_result/widgets/air_tours_section.dart';
import 'package:fligth_app/presentation/screens/air_tour_search_result/widgets/air_tour_search_result_text_form_field.dart';
import 'package:fligth_app/presentation/screens/air_tour_search_result/widgets/popular_flights_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/widgets/app_button.dart';
import '../../core/widgets/padding.dart';

class AirTourSearchResultView extends StatefulWidget {
  const AirTourSearchResultView({super.key});

  @override
  State<AirTourSearchResultView> createState() =>
      _AirTourSearchResultViewState();
}

class _AirTourSearchResultViewState extends State<AirTourSearchResultView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.secondaryColor,
      appBar: AppBar(),
      body:  SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AirTourSearchTextFormField(),
            BodyHeaderText(text: 'Popular'),
            SizedBox(height: 20.h),
            const PopularFlightsSection(),
            BodyHeaderText(text: 'Air Tours'),
            const AirToursList(),
            PaddingDynamic(
                start: 20.w,
                top: 20.h,
                end: 20.w,
                bottom: 30.h,
                child: AppButton(
                  onTap: () {},
                  text: "Show More",
                  textSize: 20,
                ))
          ],
        ),
      ),
    );
  }
}
