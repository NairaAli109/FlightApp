import 'package:fligth_app/presentation/core/constants/colors.dart';
import 'package:fligth_app/presentation/core/widgets/appbar_text.dart';
import 'package:flutter/material.dart';

class CustomerServiceView extends StatelessWidget {
  const CustomerServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      appBar: AppBar(
        title: AppBarText(text: 'Customer Service',),
        centerTitle: true,
      ),
    );
  }
}
