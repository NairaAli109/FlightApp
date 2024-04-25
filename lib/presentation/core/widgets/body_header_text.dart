// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'padding.dart';

class BodyHeaderText extends StatelessWidget {
   BodyHeaderText({super.key, required this.text});

  String? text;

  @override
  Widget build(BuildContext context) {
    return   PaddingHorizontal(
    value: 20.w,
      child: Text(
        text!,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
