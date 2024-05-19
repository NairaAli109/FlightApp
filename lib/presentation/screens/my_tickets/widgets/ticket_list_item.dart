import 'package:fligth_app/presentation/screens/my_tickets/widgets/ticket_container.dart';
import 'package:fligth_app/presentation/screens/my_tickets/widgets/ticket_reservation_date.dart';
import 'package:flutter/material.dart';

class TicketListItem extends StatelessWidget {
  const TicketListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TicketReservationDate(date: 'Today',),
        const TicketContainer(),
      ],
    );
  }
}

