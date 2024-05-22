import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../main_page/widgets/tour_location_field.dart';
import '../../search/search_bottom_sheet_view.dart';

class ToWhereLocation extends StatefulWidget {
  const ToWhereLocation({super.key});

  @override
  State<ToWhereLocation> createState() => _ToWhereLocationState();
}

class _ToWhereLocationState extends State<ToWhereLocation> {
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
      bottomPadding: 15.h,
      onTap: () {
        setState(() {
          locationSearchBottomSheet();
        });
      },
      text: "To Where?",
      iconData: Icons.location_on_outlined,
    );
  }
}
