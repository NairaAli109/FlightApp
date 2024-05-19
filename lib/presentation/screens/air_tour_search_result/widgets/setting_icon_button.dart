// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/padding.dart';
import '../../main_page/widgets/passengers_Field.dart';
import '../../main_page/widgets/tour_and_date_filed.dart';

class SettingIconButton extends StatelessWidget {
  SettingIconButton({super.key});

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
        child: Column(
          children: [
            const TourAndDateField(),
            const SizedBox(
              height: 20,
            ),
            const PassengersField(),
            const SizedBox(
              height: 20,
            ),
            AppButton(
              onTap: () {
                Navigator.pop(context);
              },
              text: "Apply", textSize: 20,
            )
          ],
        ),
      ),
    );
  }
}
