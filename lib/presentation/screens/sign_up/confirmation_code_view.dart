// ignore_for_file: must_be_immutable

import 'package:fligth_app/presentation/screens/sign_up/widgets/confirmation_code_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
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
  final focusNode = FocusNode();

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
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeaderText(text: 'Enter the \nconfirmation code,', bottomPadding: 100.h,),
                    const ConfirmationCodeField(),
                    AppButton(
                      onTap: () {
                        setState(() {
                          focusNode.unfocus();
                          formKey.currentState!.validate();
                          if (formKey.currentState!.validate()) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const AllScreens()));
                          }
                        });
                      },
                      text: 'Next',
                      size: 20,
                    ),
                  ],
                ),
              )),
        ));
  }
}
