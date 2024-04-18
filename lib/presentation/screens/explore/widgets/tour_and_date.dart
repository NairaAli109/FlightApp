import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/colors.dart';
import '../../../core/widgets/padding.dart';
import '../tour_location_bottom_sheet_view.dart';

class ChooseTourAndDate extends StatefulWidget {
  const ChooseTourAndDate({super.key,});

  @override
  State<ChooseTourAndDate> createState() => _ChooseTourAndDateState();
}

class _ChooseTourAndDateState extends State<ChooseTourAndDate> {

  void displayBottomSheet(){
    showModalBottomSheet(
      isScrollControlled: true,
        useSafeArea: true,
        enableDrag: true,
        isDismissible: true,
        context: context,
        builder: (context)=> TourLocationBottomSheetBody()
    );
  }

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 112.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.secondaryColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 2,
              blurRadius: 10,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
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
                      const SizedBox(
                        width: 10,
                      ),
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
            ),
            const Expanded(
              child: Divider(
                thickness: 0.7,
              ),
            ),
            Expanded(
              child: PaddingDynamic(
                bottom: 15,
                start: 22,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _selectDate(context);
                    });
                  },
                  child: Row(
                    children: [
                      const Icon(Icons.date_range_sharp),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "${selectedDate.toLocal()}".split(' ')[0],
                        style: TextStyle(
                            color: AppColors.lightGrey,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

