import 'package:fligth_app/presentation/screens/my_ticket_details/widgets/ticket_barcode.dart';
import 'package:fligth_app/presentation/screens/my_ticket_details/widgets/ticket_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../my_tickets/widgets/ticket_name.dart';
import '_plane_image_and_price.dart';

class TicketData extends StatelessWidget {
  const TicketData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PlaneImageAndPrice(),
        TicketName(
          ticketName: 'Cessna 172 familiarization flight from Kronstadt',
          textSize: 14.sp,
        ),
        const Divider(),
        const TicketDetails(),
        const Divider(),
        const TicketBarcode()
      ],
    );
  }
}
