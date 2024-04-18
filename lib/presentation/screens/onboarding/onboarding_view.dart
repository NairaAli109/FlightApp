
import 'package:flutter/material.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';

import '../../../generated/assets.dart';
import '../../core/constants/colors.dart';
import '../sign_up/sign_up_name_and_phone.dart';

class OnBoardingView extends StatelessWidget {
  OnBoardingView({super.key});

  final pages = [
    PageViewModel(
      pageColor: AppColors.secondaryColor,
      bubbleBackgroundColor: AppColors.primaryColor,
      title: const Text(
        'For Your Next Trip, \n Find A Relaxing Flight',
        textAlign: TextAlign.center,
      ),
      titleTextStyle: const TextStyle(
        fontWeight: FontWeight.w600,
        color: AppColors.darkBlue,
        fontSize: 25,
      ),
      body: const Text(
        'Easy to use app for \n your next flight booking text.',
        textAlign: TextAlign.center,
      ),
      bodyTextStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          color: AppColors.darkBlue,
          fontSize: 18.5),
      mainImage: Image.asset(
        Assets.imagesOnboarding1,
        height: 300,
      ),
    ),
    PageViewModel(
      pageColor: AppColors.secondaryColor,
      bubbleBackgroundColor: AppColors.primaryColor,
      title: const Text(
        "Big World Out There,\n Go Explore.",
        textAlign: TextAlign.center,
      ),
      titleTextStyle: const TextStyle(
        fontWeight: FontWeight.w600,
        color: AppColors.darkBlue,
        fontSize: 25,
      ),
      body: const Text(
        "Go to any destination easily \n by your favourite flight company.",
        textAlign: TextAlign.center,
      ),
      bodyTextStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          color: AppColors.darkBlue,
          fontSize: 18.5),
      mainImage: Image.asset(
        Assets.imagesOnboarding2,
        height: 300,
      ),
    ),
    PageViewModel(
      pageColor: AppColors.secondaryColor,
      bubbleBackgroundColor: AppColors.primaryColor,
      title: const Text(
        "Ready To Take\n Off The Flight",
        textAlign: TextAlign.center,
      ),
      titleTextStyle: const TextStyle(
        fontWeight: FontWeight.w600,
        color: AppColors.darkBlue,
        fontSize: 25,
      ),
      body: const Text(
        "Have a safe journey.",
        textAlign: TextAlign.center,
      ),
      bodyTextStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          color: AppColors.darkBlue,
          fontSize: 18.5),
      mainImage: Image.asset(
        Assets.imagesOnboarding3,
        height: 300,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroViewsFlutter(
      pages,
      showNextButton: true,
      onTapDoneButton: () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) =>  const SignUpView()));
      },
      onTapSkipButton: ()  {
         Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) =>  const SignUpView()));
        },
      pageButtonsColor: AppColors.darkBlue,
    );
  }
}
