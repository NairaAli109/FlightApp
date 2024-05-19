import 'package:fligth_app/presentation/screens/my_tickets/widgets/ticket_airfield.dart';
import 'package:fligth_app/presentation/screens/my_tickets/widgets/ticket_code.dart';
import 'package:fligth_app/presentation/screens/my_tickets/widgets/ticket_name.dart';
import 'package:fligth_app/presentation/screens/my_tickets/widgets/ticket_price.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/colors.dart';
import '../../../core/widgets/padding.dart';
import '../../my_ticket_details/my_ticket_details_view.dart';

class TicketContainer extends StatefulWidget {
  const TicketContainer({super.key});

  @override
  State<TicketContainer> createState() => _TicketContainerState();
}

class _TicketContainerState extends State<TicketContainer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const MyTicketDetails()));
        });
      },
      child: AppContainer(
        width: double.infinity,
        height: 117.h,
        borderRadius: 8,
        color: AppColors.greyColor,
        child: PaddingDynamic(
          start: 10.w,
          top: 10.h,
          end: 10.w,
          bottom: 10.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  TicketCode(ticketCode: '673-843'),
                  const Spacer(),
                  TicketPrice(ticketPrice: '10 000 ₽')
                ],
              ),
              TicketName(
                  ticketName:
                      'Cessna 172 familiarization flight from Kronstadt'),
              const Spacer(),
              TicketAirField(
                airFieldName: 'Bychye Polye',
                flightDate: 'July 30th',
              )
            ],
          ),
        ),
      ),
    );
  }
}
