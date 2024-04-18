// ignore_for_file: avoid_print, unused_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../core/constants/colors.dart';

class ChoosePhoneNumberField extends StatelessWidget {
   ChoosePhoneNumberField({super.key,required this.phoneController});

  TextEditingController phoneController;

  @override
  Widget build(BuildContext context) {
    return  IntlPhoneField(
      initialCountryCode: 'EG',
      controller: phoneController,
      decoration:   const InputDecoration(
        labelText: 'Phone Number',
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.grey
          )
        )
      ),
      // initialCountryCode: "20",
      languageCode: "en",
      onChanged: (phone) {
        print(phone.completeNumber);
      },
      onCountryChanged: (country) {
        print('Country changed to: ${country.name}');
      },
    );

  }
}

///another package
// ElevatedButton(
//     onPressed: (){
//       showCountryPicker(
//           context: context,
//         onSelect: (Country country) => print("Selected Country : ${country.displayName}"),
//         showPhoneCode: true,
//          countryListTheme: CountryListThemeData(
//             flagSize: 25,
//             backgroundColor: AppColors.secondaryColor,
//             textStyle:  const TextStyle(fontSize: 18,color:AppColors.darkBlue ),
//             bottomSheetHeight: 600.h,
//             borderRadius: const BorderRadius.only(
//               topLeft: Radius.circular(20),
//               topRight: Radius.circular(20),
//             ),
//             inputDecoration: InputDecoration(
//               labelText: 'Search',
//               hintText: 'Start typing to search',
//               prefixIcon: const Icon(Icons.search),
//               border: OutlineInputBorder(
//                 borderSide: BorderSide(
//                   color: const Color(0xFF8C98A8).withOpacity(0.2),
//                 ),
//               ),
//             ),
//           ),
//       );
//     },
//   child: const Text('Show country picker'),
// ),;