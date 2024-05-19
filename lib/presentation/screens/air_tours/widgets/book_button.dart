import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/padding.dart';
import '../../checkout_payment/payment_view.dart';

class BookButton extends StatelessWidget {
  const BookButton({super.key});

  @override
  Widget build(BuildContext context) {
    return   PaddingDynamic(
        start: 20.w,
        end: 20.w,
        bottom: 40.h,
        child: AppButton(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PaymentView()));
          },
          text: 'Book for 10,000 ₽',
          textSize: 16,
        ));
  }
}
