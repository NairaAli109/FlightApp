import 'package:fligth_app/presentation/screens/main_page/widgets/tour_location_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../search/search_bottom_sheet_view.dart';


class SelectLocation extends StatefulWidget {
  const SelectLocation({super.key});

  @override
  State<SelectLocation> createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {

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
      onTap: (){
        setState(() {
          locationSearchBottomSheet();
        });
      },
      text: "Where to find an airplane tour?",
      iconData: Icons.location_on_outlined,
    );
  }
}

