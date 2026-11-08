
import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';

class CartAppBar extends StatelessWidget implements PreferredSizeWidget {
  const new({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Cart',
        style: Styles.style25,
      ),
      centerTitle: true,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
    );
  }

  
}
