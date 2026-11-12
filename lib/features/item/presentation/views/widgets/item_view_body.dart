import 'package:flutter/material.dart';
import 'package:payment/core/widgets/custom_button.dart';
import 'package:payment/features/item/presentation/views/widgets/cart_item_info.dart';
import 'package:payment/features/visa/presentation/views/visa_view.dart';

class ItemViewBody extends StatelessWidget {
  const ItemViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Expanded(
            child: Image.network(
              'https://github.com/tharwatsamy/checkout_payment_ui/blob/main/assets/images/basket_image.png?raw=true',
            ),
          ),
          SizedBox(height: 20.0),
          CartItemInfo(title: 'Order SubTotal', value: '\$ 100.00'),
          SizedBox(height: 10.0),
          CartItemInfo(title: 'Discount', value: '\$ 40.00'),
          SizedBox(height: 10.0),
          CartItemInfo(title: 'Shipping', value: '\$ 20.00'),
          Divider(height: 40.0, thickness: 1.0),
          CartItemInfo(title: 'Total', value: '\$ 160.00'),
          SizedBox(height: 40.0),
          CustomButton(
            text: 'Complete Payment',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const VisaView()),
              );
            },
          ),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
