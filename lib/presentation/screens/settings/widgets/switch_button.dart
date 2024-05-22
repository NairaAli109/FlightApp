import 'package:fligth_app/presentation/core/constants/colors.dart';
import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key});

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {

  bool button = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: button,
        activeColor: AppColors.secondaryColor,
        activeTrackColor: AppColors.primaryColor,
        inactiveThumbColor: AppColors.lightGrey,
        inactiveTrackColor: AppColors.transparentColor,
        trackOutlineWidth: MaterialStateProperty.all(2),
        onChanged: (bool value){
          setState(() {
            button = value;
          });
        }
    );
  }
}
