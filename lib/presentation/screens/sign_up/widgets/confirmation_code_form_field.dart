import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/colors.dart';

class ConfirmationCodeTextFormField extends StatelessWidget {
  const ConfirmationCodeTextFormField(
      {super.key, required this.controller, this.validator});

  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 59.8.w,
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        validator: validator,
        decoration: InputDecoration(
          enabledBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
            color: AppColors.primaryColor,
            width: 1.3,
          )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: AppColors.primaryColor,
                width: 1.3,
              )),
        ),
      ),
    );
  }
}
