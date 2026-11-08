import 'package:flutter/material.dart';
import 'package:payment/features/item/presentation/views/widgets/cart_app_bar.dart';
import 'package:payment/features/item/presentation/views/widgets/item_view_body.dart';

class ItemView extends StatelessWidget {
  const ItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CartAppBar(),
        body: ItemViewBody(),
      ),
    );
  }
}