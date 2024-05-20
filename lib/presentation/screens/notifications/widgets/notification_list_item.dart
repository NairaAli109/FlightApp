import 'package:flutter/material.dart';

import '../../my_tickets/widgets/ticket_reservation_date.dart';
import 'notifications_container.dart';

class NotificationsListItem extends StatelessWidget {
  const NotificationsListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DateText(date: 'Today'),
        const NotificationsContainer()
      ],
    );
  }
}
