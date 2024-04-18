// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/padding.dart';
import '../../explore/widgets/passengers_container.dart';
import '../../explore/widgets/tour_and_date.dart';

class FindTourButtonSetting extends StatelessWidget {
  FindTourButtonSetting({super.key});

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
            const ChooseTourAndDate(),
            const SizedBox(
              height: 20,
            ),
            const PassengersContainer(),
            const SizedBox(
              height: 20,
            ),
            AppButton(
              onTap: () {
                Navigator.pop(context);
              },
              text: "Apply",
            )
          ],
        ),
      ),
    );
  }
}


