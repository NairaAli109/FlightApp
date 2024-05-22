import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/colors.dart';
import '../../../core/widgets/padding.dart';

class DatePickerFiled extends StatefulWidget {
  const DatePickerFiled({super.key});

  @override
  State<DatePickerFiled> createState() => _DatePickerFiledState();
}

class _DatePickerFiledState extends State<DatePickerFiled> {

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
    return Expanded(
      child: PaddingDynamic(
        bottom: 15.h,
        start: 22.w,
        child: InkWell(
          onTap: () {
            setState(() {
              _selectDate(context);
            });
          },
          child: Row(
            children: [
              const Icon(Icons.date_range_sharp),
              const SizedBox(width: 10),
              Text(
                // "Date",
                "${selectedDate.toLocal()}".split(' ')[0],
                style: TextStyle(
                    color: AppColors.lightGrey,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}
