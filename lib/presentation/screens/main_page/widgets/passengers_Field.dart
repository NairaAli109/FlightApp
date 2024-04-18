import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/widgets/padding.dart';
import 'add_remove_passenger_button.dart';

class PassengersField extends StatelessWidget {
  const PassengersField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.secondaryColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 2,
              blurRadius: 10,
            ),
          ],
        ),
        child: const PaddingHorizontal(
          value: 20,
          child: Row(
            children: [
              Icon(Icons.tag_faces_sharp),
              SizedBox(
                width: 10,
              ),
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
