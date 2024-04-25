import 'package:fligth_app/presentation/core/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/colors.dart';
import '../../core/widgets/padding.dart';
import '../success_payment/success_payment_view.dart';

class PaymentView extends StatefulWidget {
  const PaymentView({super.key});

  @override
  State<PaymentView> createState() => _PaymentViewState();
}

class _PaymentViewState extends State<PaymentView> {
  bool isLightTheme = true;
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  bool useGlassMorphism = false;
  bool useBackgroundImage = false;
  bool useFloatingAnimation = true;
  final OutlineInputBorder border = OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.grey.withOpacity(0.7),
      width: 2.0,
    ),
  );
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      appBar: AppBar(
        title: const Text("Payment"),
        centerTitle: true,
        titleTextStyle: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
            color: AppColors.blackColor),
      ),
      body: SingleChildScrollView(
        child: PaddingDynamic(
          top: 20.h,
          end: 20.w,
          start: 20.w,
          bottom: 20.w,
          child: Column(
            children: [
              CreditCardWidget(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                showBackView: isCvvFocused,
                onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {},
                obscureInitialCardNumber: false,
                obscureCardNumber: true,
                obscureCardCvv: true,
                isHolderNameVisible: true,
                isSwipeGestureEnabled: true,
                isChipVisible: true,
                cardBgColor: AppColors.blackColor,
                cardType: CardType.mastercard,
                bankName: 'Axis Bank',
                animationDuration: const Duration(milliseconds: 20),
                enableFloatingCard: true,
                labelValidThru: 'VALID\nTHRU',
              ),
              CreditCardForm(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                onCreditCardModelChange: (CreditCardModel data) {},
                formKey: formKey,
                obscureCvv: true,
                obscureNumber: true,
                isHolderNameVisible: true,
                isCardNumberVisible: true,
                isExpiryDateVisible: true,
                enableCvv: true,
                cvvValidationMessage: 'Please input a valid CVV',
                dateValidationMessage: 'Please input a valid date',
                numberValidationMessage: 'Please input a valid number',
                cardNumberValidator: (String? cardNumber) {
                  return null;
                },
                expiryDateValidator: (String? expiryDate) {
                  return null;
                },
                cvvValidator: (String? cvv) {
                  return null;
                },
                cardHolderValidator: (String? cardHolderName) {
                  return null;
                },
                onFormComplete: () {
                  // callback to execute at the end of filling card data
                },
                autovalidateMode: AutovalidateMode.always,
                disableCardNumberAutoFillHints: true,
                inputConfiguration: const InputConfiguration(
                  cardNumberDecoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Card Number',
                    hintText: 'XXXX XXXX XXXX XXXX',
                  ),
                  expiryDateDecoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Expired Date',
                    hintText: 'XX/XX',
                  ),
                  cvvCodeDecoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'CVV',
                    hintText: 'XXX',
                  ),
                  cardHolderDecoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Card Holder',
                  ),
                  cardNumberTextStyle: TextStyle(
                    fontSize: 10,
                    color: Colors.black,
                  ),
                  cardHolderTextStyle: TextStyle(
                    fontSize: 10,
                    color: Colors.black,
                  ),
                  expiryDateTextStyle: TextStyle(
                    fontSize: 10,
                    color: Colors.black,
                  ),
                  cvvCodeTextStyle: TextStyle(
                    fontSize: 10,
                    color: Colors.black,
                  ),
                ),
              ),
              PaddingDynamic(
                top: 50.h,
                start: 18.w,
                  end: 18.w,
                  child:   AppButton(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const SuccessPaymentView()));
                  }, text: "Pay", size: 16)
              )
            ],
          ),
        ),
      ),
    );
  }
}
