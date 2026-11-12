import 'package:flutter/material.dart';
import 'package:payment/features/visa/presentation/views/widgets/pay_container_style.dart';

class PaymentMethodListView extends StatefulWidget {
  const PaymentMethodListView({super.key});

  @override
  State<PaymentMethodListView> createState() => _PaymentMethodListViewState();
}

class _PaymentMethodListViewState extends State<PaymentMethodListView> {
  List<String> paymentMethods = [
    'https://res.cloudinary.com/duwfy7ale/image/upload/v1789214476/tomato_wna8o3.png',
    'https://res.cloudinary.com/duwfy7ale/image/upload/v1789214476/tomato_wna8o3.png',
  ];

  int isActiveIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: paymentMethods.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                isActiveIndex = index;
              });
            },
            child: PayContainerStyle(
              paymentMethod: paymentMethods[index],
              isActive: isActiveIndex == index,
            ),
          );
        },
      ),
    );
  }
}