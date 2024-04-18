
import 'package:fligth_app/presentation/screens/find_tour_button/widgets/air_tours.dart';
import 'package:fligth_app/presentation/screens/find_tour_button/widgets/find_tour_button_text_field.dart';
import 'package:fligth_app/presentation/screens/find_tour_button/widgets/popular_flights.dart';
import 'package:flutter/material.dart';
import '../../core/widgets/app_button.dart';
import '../../core/widgets/padding.dart';

class FindTourButtonView extends StatefulWidget {
  const FindTourButtonView({super.key});

  @override
  State<FindTourButtonView> createState() => _FindTourButtonViewState();
}

class _FindTourButtonViewState extends State<FindTourButtonView> {
  @override
  Widget build(BuildContext context) {
    return  PaddingDynamic(
      top: 50,
      start: 20,
      end: 20,
      bottom: 20,
      child: SizedBox(
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FindTourTextButtonField(),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Popular",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const PopularFlights(),
            const Text(
              "Air Tours",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const AirTours(),
            const SizedBox(
              height: 20,
            ),
            AppButton(onTap: (){}, text: "Show More")
          ],
        ),
      ),
    );
  }
}
