import 'package:fligth_app/presentation/screens/main_page/widgets/select_date.dart';
import 'package:fligth_app/presentation/screens/main_page/widgets/select_location.dart';
import 'package:flutter/material.dart';
import '../../../core/widgets/tour_double_container.dart';


class TourAndDateField extends StatelessWidget {
  const TourAndDateField({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: TourDoubleContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SelectLocation(),
            Expanded(child: Divider(thickness: 0.7)),
            SelectDate(),
          ],
        ),
      ),
    );
  }
}

