
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';
import '../../core/constants/colors.dart';
import '../../core/widgets/app_button.dart';
import '../../core/widgets/header_text.dart';
import '../../core/widgets/padding.dart';
import 'confirmation_code_view.dart';

class AddBirthDateView extends StatefulWidget {
  const AddBirthDateView({super.key});

  @override
  State<AddBirthDateView> createState() => _AddBirthDateViewState();
}

class _AddBirthDateViewState extends State<AddBirthDateView> {

  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.secondaryColor,
      body: SingleChildScrollView(
        child: PaddingDynamic(
          start: 25.w,
          top: 100.h,
          end: 25.w,
          bottom: 30.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderText(
                text: 'Select Your \nDate of Birth',
              ),
              SizedBox(
                height: 150.h,
              ),
              // Text(
              //   "date: $_selectedDate"
              // ),
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
              SizedBox(
                height: 170.h,
              ),
              AppButton(
                text: 'Next',
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  ConfirmationCodeView()));
                },
              ),
            ],
          ),
        ),
      )
    );
  }
}

