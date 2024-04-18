import 'package:fligth_app/presentation/screens/main_page/widgets/tour_location_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/colors.dart';
import 'date_picker_field.dart';

class TourAndDateField extends StatefulWidget {
  const TourAndDateField({super.key,});

  @override
  State<TourAndDateField> createState() => _TourAndDateFieldState();
}

class _TourAndDateFieldState extends State<TourAndDateField> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 112.h,
        width: double.infinity,
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
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TourLocationField(),
            Expanded(
              child: Divider(
                thickness: 0.7,
              ),
            ),
            DatePickerFiled(),
          ],
        ),
      ),
    );
  }
}

