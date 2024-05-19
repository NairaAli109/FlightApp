import 'package:flutter/material.dart';

import '../../../../generated/assets.dart';
import '../../my_tickets/widgets/ticket_price.dart';

class PlaneImageAndPrice extends StatelessWidget {
  const PlaneImageAndPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      alignment: Alignment.topRight,
      children: [
        Image.asset(Assets.imagesPlane,),
        TicketPrice(ticketPrice: '10 000 ₽')
      ],
    );
  }
}
