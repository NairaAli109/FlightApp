// ignore_for_file: must_be_immutable

import 'package:fligth_app/presentation/screens/my_ticket_details/widgets/ticket_details_text.dart';
import 'package:fligth_app/presentation/screens/my_ticket_details/widgets/ticket_details_title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/widgets/padding.dart';

class DetailsSingleContainer extends StatelessWidget {
  DetailsSingleContainer({super.key, required this.title, required this.text});

  String? title;
  String? text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AppContainer(
        height: 50.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TicketDetailsTitleText(title: title),
            TicketDetailsText(text: text),
          ],
        ),
      ),
    );
  }
}
