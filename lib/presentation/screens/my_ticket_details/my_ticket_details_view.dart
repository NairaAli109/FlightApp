import 'package:fligth_app/presentation/core/constants/colors.dart';
import 'package:fligth_app/presentation/core/widgets/appbar_text.dart';
import 'package:fligth_app/presentation/screens/my_ticket_details/widgets/ticket_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ticket_widget/ticket_widget.dart';

class MyTicketDetails extends StatelessWidget {
  const MyTicketDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[50],
        appBar: AppBar(
          backgroundColor: Colors.grey[50],
          title: AppBarText(text: '673-843'),
          centerTitle: true,
        ),
        body:  Center(
          child: TicketWidget(
            width: 350.w,
            height: 570.h,
            isCornerRounded: true,
            shadow: const [BoxShadow(color: AppColors.blackColor)],
            padding: const EdgeInsets.all(20),
            child: const TicketData(),
          ),
        ));
  }
}
