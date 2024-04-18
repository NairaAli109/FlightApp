import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../generated/assets.dart';
import '../../../core/widgets/padding.dart';

class PopularFlightsSection extends StatelessWidget {
  const PopularFlightsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AppContainer(
        height: 200.h,
        borderRadius: 15,
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => PaddingStart(
              value: 20.w,
              child: InkWell(
                onTap: () {},
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        Assets.imagesExploreHelpImg1,
                        height: 118.h,
                        width: 118.w,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    const PaddingStart(
                      value: 5,
                      child: Text(
                        "Extreme flight",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          separatorBuilder: (context, int index) => SizedBox(
            width: 15.w,
          ),
          itemCount: 10,
        ));
  }
}
