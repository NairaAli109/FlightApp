import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../generated/assets.dart';
import '../../../core/widgets/padding.dart';

class PopularFlights extends StatelessWidget {
  const PopularFlights({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) =>InkWell(
          onTap: () {},
          child: AppContainer(
            height: 150.h,
            width: 118.w,
            borderRadius: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppContainer(
                  height: 118.h,
                  width: 118.w,
                  borderRadius: 15,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      Assets.imagesExploreHelpImg1,
                      height: double.infinity,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: 5.h,),
                const PaddingStart(
                  value: 5,
                  child:Text(
                    "Extreme flight",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        separatorBuilder: (context, int index) => SizedBox(
          width: 15.w,
        ),
        itemCount: 10,
      ),
    );
  }
}
