import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';

class CartItemInfo extends StatelessWidget {
  const CartItemInfo({super.key, required this.title, required this.value});

  final String title, value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Styles.styleBold18),
        Text(value, style: Styles.styleBold18),
      ],
    );
  }
}
