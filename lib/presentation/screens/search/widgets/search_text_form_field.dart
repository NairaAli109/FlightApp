// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/widgets/app_text_form_field.dart';

class SearchTextFormField extends StatelessWidget {
  SearchTextFormField({super.key});

  var searchLocationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      prefixIcon: const Icon(
        Icons.search,
        color: AppColors.lightBlue,
        size: 30,
      ),
      labelText: 'Where to find an airplane tour?',
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
