
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/colors.dart';
import '../../core/widgets/app_text_form_field.dart';
import '../../core/widgets/padding.dart';

class TourLocationBottomSheetBody extends StatelessWidget {
   TourLocationBottomSheetBody({super.key});

  var searchLocationController = TextEditingController();


  @override
  Widget build(BuildContext context) {
      return PaddingDynamic(
        top: 50,
        start: 20,
        end: 20,
        bottom: 20,
        child: SizedBox(
          height: double.infinity,
          child:Column(
            children: [
              AppTextFormField(
                prefixIcon:  const Icon(Icons.search,color:AppColors.lightBlue ,size: 30,),
                labelText: 'Where to find an airplane tour?',
                labelStyle:  TextStyle(
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
              ),
              SizedBox(height: 30.h,),
              InkWell(
                onTap: (){},
                child: Row(
                  children: [
                    const Icon(Icons.my_location,color: AppColors.lightBlue,),
                    SizedBox(width: 15.w,),
                    const Text(
                      "My Location",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    )

                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
}


