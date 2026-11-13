
import 'package:flutter/material.dart';

class DashLine extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(30, (index) {
        return Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 2),
            child: Container(height: 2, color: Colors.blueGrey),
          ),
        );
      }),
    );
  }
}