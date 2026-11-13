import 'package:flutter/material.dart';

class CustomHalfSideCircle extends StatelessWidget {
  const CustomHalfSideCircle({super.key,  this.left,  this.right});

  final double? left;
  final double? right;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      right: right,
      bottom: MediaQuery.of(context).size.height * 0.2,
      child: CircleAvatar(backgroundColor: Colors.white),
    );
  }
}
