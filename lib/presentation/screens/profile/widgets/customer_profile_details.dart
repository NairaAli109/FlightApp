import 'package:fligth_app/presentation/screens/profile/widgets/upload_profile_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/widgets/body_header_text.dart';
import '../../../core/widgets/custom_white_container.dart';
import '../../../core/widgets/padding.dart';
import 'mobile_number_text.dart';

class CustomerProfileDetails extends StatelessWidget {
  const CustomerProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomWhiteContainer(
        topLeftRaduis: 0,
        topRightRaduis: 0,
        bottomRightRaduis: 30,
        bottomLeftRaduis: 30,
        height: 320.h,
        child: PaddingDynamic(
        bottom: 25.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              const UploadProfileImage(),
              PaddingDynamic(
                top: 15.h,
                bottom: 12.h,
                child: BodyHeaderText(text: "David J"),
              ),
              const MobileNumberText(),
            ],
          ),
        ));
  }
}
