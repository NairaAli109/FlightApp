// ignore_for_file: must_be_immutable

import 'package:fligth_app/presentation/screens/sign_up/widgets/confirmation_code_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/constants/colors.dart';
import '../../core/widgets/app_button.dart';
import '../../core/widgets/header_text.dart';
import '../../core/widgets/padding.dart';
import '../home/all_screens.dart';

class ConfirmationCodeView extends StatefulWidget {
  const ConfirmationCodeView({super.key});

  @override
  State<ConfirmationCodeView> createState() => _ConfirmationCodeViewState();
}

class _ConfirmationCodeViewState extends State<ConfirmationCodeView> {

  var formKey = GlobalKey<FormState>();

  var confirmationCodeController1 = TextEditingController();
  var confirmationCodeController2 = TextEditingController();
  var confirmationCodeController3 = TextEditingController();
  var confirmationCodeController4 = TextEditingController();
  var confirmationCodeController5 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.secondaryColor,
        body: SingleChildScrollView(
          child: PaddingDynamic(
              top: 100.h,
              start: 25.w,
              end: 25.w,
              bottom: 30.h,
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeaderText(
                      text: 'Enter the \nconfirmation code',
                    ),
                    SizedBox(
                      height: 150.h,
                    ),
                    Row(
                      children: [
                        ConfirmationCodeTextFormField(
                          controller: confirmationCodeController1,
                          validator: (String?value) {
                            if (value!.isEmpty) {
                              return "this field is required";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ConfirmationCodeTextFormField(
                          controller: confirmationCodeController2,
                          validator: (String?value) {
                            if (value!.isEmpty) {
                              return "this field is required";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ConfirmationCodeTextFormField(
                          controller: confirmationCodeController3,
                          validator: (String?value) {
                            if (value!.isEmpty) {
                              return "this field is required";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ConfirmationCodeTextFormField(
                          controller: confirmationCodeController4,
                          validator: (String?value) {
                            if (value!.isEmpty) {
                              return "this field is required";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ConfirmationCodeTextFormField(
                          controller: confirmationCodeController5,
                          validator: (String?value) {
                            if (value!.isEmpty) {
                              return "this field is required";
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 355.h,
                    ),
                    AppButton(
                      onTap: () {
                        setState(() {
                          if (formKey.currentState!.validate()) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const AllScreens()));
                          }
                        });
                      },
                      text: 'Next', size: 20,
                    ),
                  ],
                ),
              )),
        ));
  }
}

