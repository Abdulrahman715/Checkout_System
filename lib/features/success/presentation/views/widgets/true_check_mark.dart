
import 'package:flutter/material.dart';

class TrueCheckMark extends StatelessWidget {
  const TrueCheckMark({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey[400],
      radius: 50,
      child: CircleAvatar(
        radius: 40,
        backgroundColor: Colors.green,
        child: Icon(Icons.check, size: 40, color: Colors.white),
      ),
    );
  }
}