import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/padding.dart';
import '../../../core/widgets/tour_single_container.dart';
import '../../../core/widgets/date_picker_field.dart';

class SelectDepartureDate extends StatefulWidget {
  const SelectDepartureDate({super.key});

  @override
  State<SelectDepartureDate> createState() => _SelectDepartureDateState();
}

class _SelectDepartureDateState extends State<SelectDepartureDate> {

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {

    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return   TourSingleContainer(
      child: PaddingDynamic(
        top: 12.h,
        child: DatePickerFiled(
          onTap: () {
            setState(() {
              _selectDate(context);
            });
          },
          text: 'Date of departure',
        ),
      ),
    );
  }
}
