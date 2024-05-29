import 'package:flutter/material.dart';
import '../../../core/widgets/date_picker_field.dart';

class SelectDate extends StatefulWidget {
  const SelectDate({super.key});

  @override
  State<SelectDate> createState() => _SelectDateState();
}

class _SelectDateState extends State<SelectDate> {

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
    return DatePickerFiled(
      onTap: () {
        setState(() {
          _selectDate(context);
        });
      },
      text: "${selectedDate.toLocal()}".split(' ')[0],
    );
  }
}
