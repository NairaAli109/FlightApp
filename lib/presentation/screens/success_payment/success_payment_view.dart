import 'package:fligth_app/generated/assets.dart';
import 'package:fligth_app/presentation/core/constants/colors.dart';
import 'package:fligth_app/presentation/core/widgets/padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../home/all_screens.dart';

class SuccessPaymentView extends StatefulWidget {
  const SuccessPaymentView({super.key});

  @override
  State<SuccessPaymentView> createState() => _SuccessPaymentViewState();
}

class _SuccessPaymentViewState extends State<SuccessPaymentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body:PaddingDynamic(
        top: 170.h,
        bottom: 60.h,
        start: 30.w,
        end: 30.w,
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child:   AppContainer(
                height: 250.h,
                width: 250.w,
                child: Image.asset(Assets.imagesPaymentSuccess),
              ),
            ),
            SizedBox(height: 20.h,),
            const Text(
              "Paid",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryColor,
                  letterSpacing: 2
              ),
            ) ,
            PaddingDynamic(
                top: 30.h,
                bottom: 20.w,
                child: const Text(
                  "In case of flight cancellation the money will be refunded",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primaryColor,
                      letterSpacing: 1
                  ),
                )
            ),
            const Spacer(),
            InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const AllScreens() ));
              },
              child:   AppContainer(
                  width: 350.w,
                  height: 50.h,
                  color: AppColors.primaryColor,
                  borderRadius: 8,
                  child: Center(
                    child: Text(
                      "Perfect",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.secondaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
