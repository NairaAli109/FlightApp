
import 'package:flutter/material.dart';
import '../../../core/widgets/padding.dart';
import '../../../core/widgets/tour_single_container.dart';
import 'add_remove_passenger_button.dart';

class PassengersField extends StatelessWidget {
  const PassengersField({super.key});

  @override
  Widget build(BuildContext context) {
    return const TourSingleContainer(
        child: PaddingHorizontal(
      value: 20,
      child: Row(
        children: [
          Icon(Icons.tag_faces_sharp),
          SizedBox(width: 10),
          Text(
            "Passengers",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.7,
            ),
          ),
          Spacer(),
          AddRemovePassengersButton(),
        ],
      ),
    ));
  }
}
