import 'package:flutter/material.dart';
import 'air_tour_image.dart';
import 'arrow_back_icon_button.dart';
import 'favorites_icon_button.dart';

class AirToursImageSection extends StatelessWidget {
  const AirToursImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            AirTourImage(),
            FavoritesIconButton(),
          ],
        ),
        ArrowBackIconButton(),
      ],
    );
  }
}
