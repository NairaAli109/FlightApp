import 'package:fligth_app/presentation/screens/flight/widgets/to_where_location.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/tour_double_container.dart';
import 'from_where_location.dart';

class FromToWhereLocationSection extends StatelessWidget {
  const FromToWhereLocationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const TourDoubleContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FromWhereLocation(),
          Expanded(child: Divider(thickness: 0.7)),
          ToWhereLocation()
        ],
      ),
    );
  }
}
