import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../main_page/widgets/tour_location_field.dart';
import '../../search/search_bottom_sheet_view.dart';

class FromWhereLocation extends StatefulWidget {
  const FromWhereLocation({super.key});

  @override
  State<FromWhereLocation> createState() => _FromWhereLocationState();
}

class _FromWhereLocationState extends State<FromWhereLocation> {
  void locationSearchBottomSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        useSafeArea: true,
        enableDrag: true,
        isDismissible: true,
        context: context,
        builder: (context) => const SearchBottomSheetView());
  }

  @override
  Widget build(BuildContext context) {
    return TourLocationField(
      topPadding: 15.h,
      onTap: () {
        setState(() {
          locationSearchBottomSheet();
        });
      },
      text: "From Where?",
      iconData: Icons.location_on_outlined,
    );
  }
}
