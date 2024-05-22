import 'package:flutter/material.dart';

import '../../../core/widgets/app_button.dart';
import '../../air_tour_search_result/air_tour_search_result_view.dart';

class FindButton extends StatefulWidget {
  const FindButton({super.key});

  @override
  State<FindButton> createState() => _FindButtonState();
}

class _FindButtonState extends State<FindButton> {
  @override
  Widget build(BuildContext context) {
    return AppButton(
      onTap: () {
        setState(() {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const AirTourSearchResultView()));
        });
      },
      text: "Find",
      textSize: 20,
    );
  }
}
