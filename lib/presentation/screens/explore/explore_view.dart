
import 'package:fligth_app/presentation/screens/explore/widgets/explore_body.dart';
import 'package:fligth_app/presentation/screens/explore/widgets/helpful_info_images.dart';
import 'package:fligth_app/presentation/screens/explore/widgets/passengers_container.dart';
import 'package:fligth_app/presentation/screens/explore/widgets/tour_and_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/widgets/app_button.dart';
import '../../core/widgets/header_text.dart';
import '../../core/widgets/padding.dart';
import '../find_tour_button/find_tour_button_view.dart';

class ExploreView extends StatefulWidget {
  const ExploreView({super.key});

  @override
  State<ExploreView> createState() => _ExploreViewState();
}

class _ExploreViewState extends State<ExploreView> {

  void displayBottomSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        useSafeArea: true,
        context: context,
        builder: (context) =>  const FindTourButtonView());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: SingleChildScrollView(
          child: ExploreContainer(
            bottomLeftRaduis: 30,
            bottomRightRaduis: 30,
            topLeftRaduis: 0,
            topRightRaduis: 0,
            child: PaddingDynamic(
                top: 100.h,
                start: 20.w,
                end: 20.w,
                // bottom: 30.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeaderText(text: "Extreme \nairplane flight"),
                    const SizedBox(
                      height: 30,
                    ),
                    const ChooseTourAndDate(),
                    const SizedBox(
                      height: 20,
                    ),
                    const PassengersContainer(),
                    const SizedBox(
                      height: 20,
                    ),
                    AppButton(
                      onTap: () {
                        setState(() {
                          displayBottomSheet();
                        });
                      },
                      text: "Find Tour",
                    )
                  ],
                )),
          ),
        )),
        const SizedBox(
          height: 25,
        ),
        ExploreContainer(
            height: 235,
            bottomLeftRaduis: 0,
            bottomRightRaduis: 0,
            topLeftRaduis: 30,
            topRightRaduis: 30,
            child: PaddingDynamic(
              top: 25.h,
              start: 20.w,
              end: 20.w,
              bottom: 30.h,
              child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Helpful information",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    HelpfulInfoImages(),
                  ]),
            )),
      ],
    );
  }
}
