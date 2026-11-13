
import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';

class MasterCardContainer extends StatelessWidget {
  const MasterCardContainer({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18.0,
          vertical: 8.0,
        ),
        child: Row(
          children: [
            Image.network(
              'https://res.cloudinary.com/duwfy7ale/image/upload/v1788807576/restaurant-building_j2jlkf.png',
              height: 40,
              fit: BoxFit.scaleDown,
            ),
            SizedBox(width: 16),
            Column(
              children: [
                Text('Credit Card', style: Styles.style18),
                SizedBox(height: 8),
                Text('Master Card **1234', style: Styles.style18),
              ],
            ),
          ],
        ),
      ),
    );
  }
}