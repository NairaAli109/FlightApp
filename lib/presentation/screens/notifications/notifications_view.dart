import 'package:fligth_app/presentation/core/widgets/appbar_text.dart';
import 'package:fligth_app/presentation/core/widgets/padding.dart';
import 'package:fligth_app/presentation/screens/notifications/widgets/notification_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/constants/colors.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      appBar: AppBar(
        title: AppBarText(text: 'Notifications',),
        centerTitle: true,
      ),
      body: PaddingDynamic(
        top: 20.h,
        start: 20.w,
        bottom: 20.h,
        end: 20.w,
        child: ListView.separated(
            itemBuilder: (context,index)=> const NotificationsListItem(),
            separatorBuilder: (context,index)=>SizedBox(height: 10.h,),
            itemCount: 5,
        ),
      ),
    );
  }
}
