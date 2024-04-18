// ignore_for_file: use_super_parameters, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaddingHorizontal extends StatelessWidget {
  final Widget child;
  final double value;
  const PaddingHorizontal({Key? key, required this.child, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: value.w),
      child: child,
    );
  }
}

class PaddingStart extends StatelessWidget {
  final Widget child;
  final double value;
  const PaddingStart({Key? key, required this.child, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: value.w),
      child: child,
    );
  }
}

class PaddingEnd extends StatelessWidget {
  final Widget child;
  final double value;
  const PaddingEnd({Key? key, required this.child, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(end: value.w),
      child: child,
    );
  }
}

class PaddingDynamic extends StatelessWidget {
  final Widget child;
  final double? top;
  final double? bottom;
  final double? start;
  final double? end;
  const PaddingDynamic({
    Key? key,
    required this.child,
    this.top = 0.0,
    this.bottom = 0.0,
    this.end = 0.0,
    this.start = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        end: end!.w,
        top: top!.h,
        start: start!.w,
        bottom: bottom!.h,
      ),
      child: child,
    );
  }
}

class MarginDynamic extends StatelessWidget {
  final Widget child;
  final double? top;
  final double? bottom;
  final double? start;
  final double? end;
  const MarginDynamic({
    Key? key,
    required this.child,
    this.top = 0.0,
    this.bottom = 0.0,
    this.end = 0.0,
    this.start = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(
        end: end!.w,
        top: top!.h,
        start: start!.w,
        bottom: bottom!.h,
      ),
      child: child,
    );
  }
}

class AppContainer extends StatelessWidget {
  final Widget? child;
  final double? topMargin;
  final double? bottomMargin;
  final double? startMargin;
  final double? endMargin;
  final double? topPadding;
  final double? bottomPadding;
  final double? startPadding;
  final double? endPadding;
  final double? allPadding;

  final double? borderRadius;
  final double? width;
  final double? height;
  final Color? color;
  final Color borderColor;
  final dynamic onPressed;

  const AppContainer(
      {Key? key,
      this.child,
      this.topMargin = 0.0,
      this.color,
      this.onPressed,
      this.topPadding = 0.0,
      this.endMargin = 0.0,
      this.endPadding = 0.0,
      this.startMargin = 0.0,
      this.startPadding = 0.0,
      this.bottomMargin = 0.0,
      this.allPadding,
      this.bottomPadding = 0.0,
      this.borderRadius = 0.0,
      this.width,
      this.height,
      this.borderColor = Colors.transparent});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width?.w,
        height: height?.h,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(
            borderRadius!,
          ),
        ),
        margin: EdgeInsetsDirectional.only(
          end: endMargin!.w,
          top: topMargin!.h,
          start: startMargin!.w,
          bottom: bottomMargin!.h,
        ),
        padding: EdgeInsetsDirectional.only(
          end: (allPadding ?? endPadding)!.w,
          start: (allPadding ?? startPadding)!.w,
          top: (allPadding ?? topPadding)!.h,
          bottom: (allPadding ?? bottomPadding)!.h,
        ),
        child: child,
      ),
    );
  }
}
