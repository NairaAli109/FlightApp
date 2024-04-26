import 'package:fligth_app/presentation/screens/sign_up/widgets/date_picker_field.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: AppColors.secondaryColor),
        backgroundColor: AppColors.secondaryColor,
        body: SingleChildScrollView(
          child: PaddingDynamic(
            start: 25.w,
            end: 25.w,
            bottom: 30.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderText(text: 'Select Your \nDate of Birth', bottomPadding: 100.h,),
                const DatePickerField(),
                AppButton(
                  text: 'Next',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ConfirmationCodeView()));
                  },
                  size: 20,
                ),
              ],
            ),
          ),
        ));
  }
}
