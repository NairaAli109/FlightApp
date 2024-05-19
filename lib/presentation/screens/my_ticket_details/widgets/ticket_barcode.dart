import 'package:barcode_widget/barcode_widget.dart';
import 'package:fligth_app/presentation/core/widgets/padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TicketBarcode extends StatelessWidget {
  const TicketBarcode({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddingDynamic(
        top: 15.h,
        child: BarcodeWidget(
          height: 120.h,
          barcode: Barcode.code128(),
          data: "673-843",
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
          textPadding: 15.h,
          errorBuilder: (context, error) => Center(child: Text(error)),
        ));
  }
}
