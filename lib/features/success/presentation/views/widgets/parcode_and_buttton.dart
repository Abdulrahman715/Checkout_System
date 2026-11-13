
import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';

class ParcodeAndButton extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:
          (MediaQuery.of(context).size.height * 0.2 + 20 / 1) -
          19,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.check, size: 100),
          SizedBox(width: 8),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.green, width: 2),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 26.0,
                vertical: 18.0,
              ),
              child: Text(
                'PAID',
                style: Styles.styleBold18.copyWith(
                  color: Colors.green,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}