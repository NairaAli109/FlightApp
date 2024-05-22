import 'package:fligth_app/presentation/screens/settings/widgets/setting_icon.dart';
import 'package:fligth_app/presentation/screens/settings/widgets/setting_text.dart';
import 'package:fligth_app/presentation/screens/settings/widgets/switch_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/colors.dart';
import '../../../core/widgets/padding.dart';
import 'language_text.dart';

class SettingContainer extends StatelessWidget {
  SettingContainer({
    super.key,
    required this.iconData,
    required this.text,
    required this.languageText,
    required this.switchButton,
  });

  IconData? iconData;
  String? text;
  bool? languageText;
  bool? switchButton;

  @override
  Widget build(BuildContext context) {
    return PaddingDynamic(
      bottom: 10.h,
      child: AppContainer(
        width: double.infinity,
        height: 53.h,
        borderRadius: 8,
        color: AppColors.greyColor,
        child: PaddingHorizontal(
          value: 15.w,
          child: Row(
            children: [
              SettingIcon(iconData: iconData),
              SettingText(text: text),
              const Spacer(),
              if(languageText!)
                const LanguageText(),
              if(switchButton!)
                const SwitchButton()
            ],
          ),
        ),
      ),
    );
  }
}
