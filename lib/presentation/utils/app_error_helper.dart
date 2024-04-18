// import 'package:another_flushbar/flushbar_helper.dart';
// import 'package:champ/helpers/failures.dart';
// import 'package:champ/presentation/utils/textstyles.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../core/error_dialog.dart';
//
// class AppErrorHelper {
//   static void showErrorPopUp(state, context) {
//     Locale currentLocale = Localizations.localeOf(context);
//     FlushbarHelper.createError(
//             message: currentLocale.languageCode.toLowerCase() == 'en'
//                 ? state.failure.messageEn
//                 : state.failure.messageAr)
//         .show(context);
//   }
//
//   static void showSuccessPopUp(message, context) {
//     FlushbarHelper.createSuccess(message: message).show(context);
//   }
//
//   static Widget errorWidget(context,
//       {String dataBeingFetched = '', double? topPadding}) {
//     String text1 = AppLocalizations.of(context)!.an_error_occured;
//     String text2 = dataBeingFetched == ''
//         ? ''
//         : '${AppLocalizations.of(context)!.while_fetching} $dataBeingFetched';
//     String text3 = ',${AppLocalizations.of(context)!.please_try_again_later}';
//     return Center(
//       child: Padding(
//         padding: EdgeInsetsDirectional.only(
//             top: topPadding == null ? 0.0 : topPadding.h,
//             start: 20.w,
//             end: 20.w),
//         child: PrimaryTextBold(text: text1 + text2 + text3, fontSize: 12),
//       ),
//     );
//   }
//
//   static Widget emptyList(context, String listName, {padding = true}) {
//     return Center(
//       child: Padding(
//         padding: padding
//             ? EdgeInsetsDirectional.only(top: 80.0.h, start: 20.w, end: 20.w)
//             : EdgeInsetsDirectional.zero,
//         child: PrimaryTextBold(
//             text: '${AppLocalizations.of(context)!.you_have_no} $listName',
//             fontSize: 12),
//       ),
//     );
//   }
//
//   static showErrorDialogue(Failure failure, context, Screens screen,
//       {bool isInternetError = false, arguments}) async {
//     return showDialog<void>(
//       context: context,
//       barrierDismissible: false,
//       builder: (BuildContext context) {
//         return WillPopScope(
//           onWillPop: () async => false,
//           child: ErrorDialogue(
//             messageEn: failure.messageEn,
//             messageAr: failure.messageAr,
//             screen: screen,
//             isInternetError: isInternetError,
//             arguments: arguments,
//           ),
//         );
//       },
//     );
//   }
// }
