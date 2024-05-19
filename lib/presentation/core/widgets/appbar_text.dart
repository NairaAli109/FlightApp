import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarText extends StatelessWidget {
   AppBarText({super.key,required this.text});

  String? text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
    );
  }
}
