import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';

class DatePickerField extends StatefulWidget {
  const DatePickerField({super.key});

  @override
  State<DatePickerField> createState() => _DatePickerFieldState();
}

class _DatePickerFieldState extends State<DatePickerField> {

  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 250.h,
          child: ScrollDatePicker(
            selectedDate: _selectedDate,
            locale: const Locale('en'),
            onDateTimeChanged: (DateTime value) {
              setState(() {
                _selectedDate = value;
              });
            },
          ),
        ),
        SizedBox(height: 190.h),
      ],
    );
  }
}
