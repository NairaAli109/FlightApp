import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/widgets/padding.dart';
import '../../search/search_bottom_sheet_view.dart';

class TourLocationField extends StatefulWidget {
  const TourLocationField({super.key});

  @override
  State<TourLocationField> createState() => _TourLocationFieldState();
}

class _TourLocationFieldState extends State<TourLocationField> {

  void displayBottomSheet() {
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
    return Expanded(
      child: PaddingDynamic(
        top: 15,
        start: 20,
        child: InkWell(
          onTap: () {
            setState(() {
              displayBottomSheet();
            });
          },
          child: Row(
            children: [
              const Icon(Icons.location_on_sharp),
              const SizedBox(width: 10),
              Text(
                "Where to find an airplane tour?",
                style: TextStyle(
                    color: AppColors.lightGrey,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}
