import 'package:fligth_app/presentation/core/constants/colors.dart';
import 'package:fligth_app/presentation/core/widgets/header_text.dart';
import 'package:fligth_app/presentation/core/widgets/padding.dart';
import 'package:fligth_app/presentation/screens/flight/widgets/find_button.dart';
import 'package:fligth_app/presentation/screens/flight/widgets/from_to_where_location_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/widgets/tour_single_container.dart';
import '../main_page/widgets/date_picker_field.dart';
import '../main_page/widgets/passengers_Field.dart';

class FlightsView extends StatelessWidget {
  const FlightsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: SingleChildScrollView(
        child: PaddingDynamic(
            start: 20.w,
            top: 100.h,
            end: 20.w,
            bottom: 20.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderText(text: "Split the payment \nwith other passengers"),
                SizedBox(height: 25.h),
                const FromToWhereLocationSection(),
                SizedBox(height: 15.h),
                TourSingleContainer(
                  child: PaddingDynamic(
                    top: 12.h,
                    child: const DatePickerFiled(),
                  ),
                ),
                SizedBox(height: 15.h),
                TourSingleContainer(
                  child: PaddingDynamic(
                    top: 12.h,
                    child: const DatePickerFiled(),
                  ),
                ),
                SizedBox(height: 15.h),
                const PassengersField(),
                SizedBox(height: 25.h),
                const FindButton(),
              ],
            )),
      ),
    );
  }
}
