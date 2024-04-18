
// ignore_for_file: must_be_immutable

import 'package:fligth_app/presentation/screens/search/widgets/location_text_button.dart';
import 'package:fligth_app/presentation/screens/search/widgets/search_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/widgets/padding.dart';

class SearchBottomSheetView extends StatelessWidget {
   const SearchBottomSheetView({super.key});

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
              SearchTextFormField(),
              SizedBox(height: 30.h,),
              const LocationTextButton(),
            ],
          ),
        ),
      );
    }
}


