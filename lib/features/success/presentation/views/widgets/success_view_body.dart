import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';
import 'package:payment/features/item/presentation/views/widgets/cart_item_info.dart';

class SuccessViewBody extends StatelessWidget {
  const SuccessViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 50),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.9,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: -50,
            child: CircleAvatar(
              backgroundColor: Colors.grey[400],
              radius: 50,
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.green,
                child: Icon(Icons.check, size: 40, color: Colors.white),
              ),
            ),
          ),
          Padding(
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
                  Container(
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
                  ),
                  SizedBox(height: 26),
                  SizedBox(
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
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: -20,
            bottom: MediaQuery.of(context).size.height * 0.2,
            child: CircleAvatar(backgroundColor: Colors.white),
          ),
          Positioned(
            right: -20,
            bottom: MediaQuery.of(context).size.height * 0.2,
            child: CircleAvatar(backgroundColor: Colors.white),
          ),
          Positioned(
            left: 20 + 8,
            right: 20 + 8,
            bottom: MediaQuery.of(context).size.height * 0.2 + 20,
            child: Row(
              children: List.generate(30, (index) {
                return Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2),
                    child: Container(height: 2, color: Colors.blueGrey),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
