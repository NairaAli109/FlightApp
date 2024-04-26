import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/app_text_form_field.dart';
import '../../../core/widgets/padding.dart';

class NameField extends StatelessWidget {
   NameField(
      {super.key,
      required this.firstNameController,
      required this.lastNameController});

  var firstNameController;
  var lastNameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppContainer(
          width: double.infinity,
          height: 225,
          child: Column(
            children: [
              AppTextFormField(
                labelText: 'First Name',
                controller: firstNameController,
                type: TextInputType.text,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return " please enter your first name";
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.h),
              AppTextFormField(
                labelText: 'Last Name',
                controller: lastNameController,
                type: TextInputType.text,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return " please enter your last name";
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
        SizedBox(height: 200.h),
      ],
    );
  }
}
