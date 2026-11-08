import 'package:flutter/material.dart';
import 'package:payment/features/item/presentation/views/item_view.dart';

void main() {
  runApp(Payment());
}

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ItemView(),
      ),
    );
  }
}
