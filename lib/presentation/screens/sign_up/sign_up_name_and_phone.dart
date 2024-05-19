// ignore_for_file: must_be_immutable, avoid_print

import 'package:fligth_app/presentation/screens/sign_up/sign_up_birth_date.dart';
import 'package:fligth_app/presentation/screens/sign_up/widgets/choose_phon_number_field.dart';
import 'package:fligth_app/presentation/screens/sign_up/widgets/signup_name_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/constants/colors.dart';
import '../../core/widgets/app_button.dart';
import '../../core/widgets/app_text_form_field.dart';
import '../../core/widgets/header_text.dart';
import '../../core/widgets/padding.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  var formKey = GlobalKey<FormState>();
  var phoneController = TextEditingController();
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();

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
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderText(text: 'Enter Your Data', bottomPadding: 100.h,),
              ChoosePhoneNumberField(phoneController: phoneController),
              NameField(
                  firstNameController: firstNameController,
                  lastNameController: lastNameController,
              ),
              AppButton(
                text: 'Next',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddBirthDateView()));
                  // if (formKey.currentState!.validate()) {
                  //   Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) => const AddBirthDateView()));
                  // }
                },
                textSize: 20,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
