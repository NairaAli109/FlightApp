import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/widgets/app_text_form_field.dart';
import 'find_tour_button_setting.dart';

class FindTourTextButtonField extends StatefulWidget {
  const FindTourTextButtonField({super.key});

  @override
  State<FindTourTextButtonField> createState() => _FindTourTextButtonFieldState();
}

class _FindTourTextButtonFieldState extends State<FindTourTextButtonField> {

  var searchLocationController = TextEditingController();

  void displayBottomSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        useSafeArea: true,
        context: context,
        builder: (context) =>  FindTourButtonSetting());
  }

  @override
  Widget build(BuildContext context) {
    return     AppTextFormField(
      suffixIcon: InkWell(
        onTap: (){
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
    );
  }
}
