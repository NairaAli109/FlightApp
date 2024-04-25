
import 'package:fligth_app/presentation/core/widgets/custom_white_container.dart';
import 'package:fligth_app/presentation/screens/main_page/widgets/helpful_info_images.dart';
import 'package:fligth_app/presentation/screens/main_page/widgets/passengers_Field.dart';
import 'package:fligth_app/presentation/screens/main_page/widgets/tour_and_date_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/widgets/app_button.dart';
import '../../core/widgets/header_text.dart';
import '../../core/widgets/padding.dart';
import '../air_tour_search_result/air_tour_search_result_view.dart';

class ExploreView extends StatefulWidget {
  const ExploreView({super.key});

  @override
  State<ExploreView> createState() => _ExploreViewState();
}

class _ExploreViewState extends State<ExploreView> {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: SingleChildScrollView(
          child: CustomWhiteContainer(
            bottomLeftRaduis: 30,
            bottomRightRaduis: 30,
            topLeftRaduis: 0,
            topRightRaduis: 0,
            child: PaddingDynamic(
                top: 100.h,
                start: 20.w,
                end: 20.w,
                bottom: 30.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeaderText(text: "Extreme \nairplane flight"),
                    const SizedBox(
                      height: 30,
                    ),
                    const TourAndDateField(),
                    const SizedBox(
                      height: 20,
                    ),
                    const PassengersField(),
                    const SizedBox(
                      height: 20,
                    ),
                    AppButton(
                      onTap: () {
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const AirTourSearchResultView() ));
                        });
                      },
                      text: "Find Tour", size: 20,
                    )
                  ],
                )),
          ),
        )),
         SizedBox(
          height: 10.h,
        ),
        CustomWhiteContainer(
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
