import 'package:fligth_app/presentation/core/widgets/padding.dart';
import 'package:fligth_app/presentation/screens/my_tickets/widgets/ticket_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/constants/colors.dart';
import '../../core/widgets/appbar_text.dart';

class MyTicketsView extends StatelessWidget {
  const MyTicketsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      appBar: AppBar(
        title:  AppBarText(text: 'My Tickets',),
        centerTitle: true,
      ),
      body: PaddingDynamic(
        start: 20.w,
        top: 20.h,
        end: 20.w,
        bottom: 20.h,
        child: ListView.separated(
            itemBuilder: (context, index)=>const TicketListItem(),
            separatorBuilder: (context, index)=> SizedBox(height: 10.h,),
            itemCount: 8
        )
      ),
    );
  }
}
