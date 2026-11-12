import 'package:flutter/material.dart';

class PayContainerStyle extends StatefulWidget {
  const PayContainerStyle({
    super.key,
    required this.paymentMethod,
    required this.isActive,
  });

  final String paymentMethod;
  final bool isActive;

  @override
  State<PayContainerStyle> createState() => _PayContainerStyleState();
}

class _PayContainerStyleState extends State<PayContainerStyle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: Container(
        height: 60,
        width: 120,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: widget.isActive ? Colors.blue : Colors.grey,
            width: 3,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Center(
          child: Image.network(
            widget.paymentMethod,
            height: 80,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
