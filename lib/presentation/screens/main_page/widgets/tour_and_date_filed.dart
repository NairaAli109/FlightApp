import 'package:fligth_app/presentation/screens/main_page/widgets/tour_location_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/widgets/tour_double_container.dart';
import '../../search/search_bottom_sheet_view.dart';
import 'date_picker_field.dart';

class TourAndDateField extends StatefulWidget {
  const TourAndDateField({
    super.key,
  });

  @override
  State<TourAndDateField> createState() => _TourAndDateFieldState();
}

class _TourAndDateFieldState extends State<TourAndDateField> {

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
    return SingleChildScrollView(
      child: TourDoubleContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TourLocationField(
              topPadding: 15.h,
              onTap: () {
                setState(() {
                  locationSearchBottomSheet();
                });
              },
              text: "Where to find an airplane tour?",
              iconData: Icons.location_on_outlined,
            ),
            const Expanded(child: Divider(thickness: 0.7)),
            const DatePickerFiled(),
          ],
        ),
      ),
    );
  }
}
