import 'package:fligth_app/presentation/core/widgets/padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/colors.dart';
import '../../../core/widgets/app_text_form_field.dart';
import 'setting_icon_button.dart';

class AirTourSearchTextFormField extends StatefulWidget {
  const AirTourSearchTextFormField({super.key});

  @override
  State<AirTourSearchTextFormField> createState() =>
      _AirTourSearchTextFormFieldState();
}

class _AirTourSearchTextFormFieldState
    extends State<AirTourSearchTextFormField> {
  var searchLocationController = TextEditingController();

  void displayBottomSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        useSafeArea: true,
        context: context,
        builder: (context) => SettingIconButton());
  }

  @override
  Widget build(BuildContext context) {
    return PaddingDynamic(
        start: 20.w,
        end: 20.w,
        bottom: 40.h,
        child: AppTextFormField(
          suffixIcon: InkWell(
            onTap: () {
              setState(() {
                displayBottomSheet();
              });
            },
            child: Icon(
              Icons.settings_sharp,
              color: AppColors.lightGrey,
              size: 30,
            ),
          ),
          labelText: 'Cairo, 25-6-2024',
          labelStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.lightGrey),
          controller: searchLocationController,
          type: TextInputType.text,
          validator: (String? value) {
            if (value!.isEmpty) {
              return " the search location is empty , please fill it";
            }
            return null;
          },
        ));
  }
}
