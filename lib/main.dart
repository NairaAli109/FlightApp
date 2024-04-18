
import 'package:fligth_app/presentation/core/constants/colors.dart';
import 'package:fligth_app/presentation/screens/onboarding/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main()async {
  await ScreenUtil.ensureScreenSize();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const FlightApp());
}


class FlightApp extends StatelessWidget {
  const FlightApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
            statusBarColor: AppColors.transparentColor,
            statusBarIconBrightness: Brightness.dark
        )
    );
    return  ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // scaffoldBackgroundColor: AppColors.secondaryColor,
          appBarTheme: AppBarTheme(
            backgroundColor: AppColors.secondaryColor,
          )
        ),
        ///used with country picker
        // supportedLocales: const [
        //   Locale('en'),
        //   Locale('el'),
        //   Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans'), // Generic Simplified Chinese 'zh_Hans'
        //   Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'), // Generic traditional Chinese 'zh_Hant'
        // ],
        // localizationsDelegates: const [
        //   CountryLocalizations.delegate,
        //   GlobalMaterialLocalizations.delegate,
        //   GlobalWidgetsLocalizations.delegate,
        //   GlobalCupertinoLocalizations.delegate,
        // ],
        home: OnBoardingView(),
      ),
    );
  }
}