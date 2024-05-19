import 'package:fligth_app/presentation/screens/profile/widgets/profile_setting_containers.dart';
import 'package:flutter/material.dart';

import '../../my_card/my_card_view.dart';
import '../../my_tickets/my_tickets_view.dart';

class CardsTicketsSection extends StatefulWidget {
  const CardsTicketsSection({super.key});

  @override
  State<CardsTicketsSection> createState() => _CardsTicketsSectionState();
}

class _CardsTicketsSectionState extends State<CardsTicketsSection> {
  @override
  Widget build(BuildContext context) {
    return ProfileSettingContainers(
      text1: 'My cards',
      iconData1: Icons.credit_card,
      onTap1: () {
        setState(() {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MyCardView()));
        });
      },
      text2: 'My tickets',
      iconData2: Icons.event_note,
      onTap2: () {
        setState(() {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MyTicketsView()));
        });
      },
    );
  }
}
