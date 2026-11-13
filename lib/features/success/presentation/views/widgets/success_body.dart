import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';
import 'package:payment/features/item/presentation/views/widgets/cart_item_info.dart';
import 'package:payment/features/success/presentation/views/widgets/master_card_container.dart';
import 'package:payment/features/success/presentation/views/widgets/parcode_and_buttton.dart';

class SuccessBody extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 60),
            Text('Thank you', style: Styles.style25),
            SizedBox(height: 16),
            Text(
              'Your transaction was successful',
              style: Styles.style20,
            ),
            SizedBox(height: 22),
            CartItemInfo(title: 'Date', value: '1/1/2027'),
            SizedBox(height: 16),
    
            CartItemInfo(title: 'Time', value: DateTime.now().toString()),
            SizedBox(height: 16),
    
            CartItemInfo(title: 'To', value: 'Abdulrahman Muhammad'),
            SizedBox(height: 16),
            Divider(thickness: 2, height: 36, color: Colors.blueGrey),
            CartItemInfo(title: 'Total', value: r'$ 100.20'),
            SizedBox(height: 16),
            MasterCardContainer(),
            SizedBox(height: 26),
            ParcodeAndButton(),
          ],
        ),
      ),
    );
  }
}