import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class VisaCardForm extends StatefulWidget {
  const VisaCardForm({super.key, required this.formKey, required this.autovalidateMode});

  final GlobalKey<FormState> formKey;
  final AutovalidateMode autovalidateMode;

  @override
  State<VisaCardForm> createState() => _VisaCardFormState();
}

class _VisaCardFormState extends State<VisaCardForm> {
  String cardNumber = '';

  String expiryDate = '';

  String cardHolderName = '';

  String cvvCode = '';

  bool isCvvFocused = false;

  final bool showBackView = false;

  void onCreditCardWidgetChange(CreditCardBrand brand) {}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 300,
          width: double.infinity,
          child: CreditCardWidget(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            showBackView: showBackView,
            onCreditCardWidgetChange: onCreditCardWidgetChange,
            isHolderNameVisible: true,
          ),
        ),
        CreditCardForm(
          autovalidateMode: widget.autovalidateMode,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          onCreditCardModelChange: (creditCardModel) {
            cardNumber = creditCardModel.cardNumber;
            expiryDate = creditCardModel.expiryDate;
            cardHolderName = creditCardModel.cardHolderName;
            cvvCode = creditCardModel.cvvCode;
            isCvvFocused = creditCardModel.isCvvFocused;
          },
          formKey: widget.formKey,
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
