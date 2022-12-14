import 'package:flutter/material.dart';
import 'package:responsive_product_web_page/product_page/widgets/app_logo.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar(
      {super.key, required this.onPressed, required this.isDrawerOpened});
  final VoidCallback onPressed;
  final bool isDrawerOpened;
  @override
  Widget build(BuildContext context) {
    //return AppBar();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 9),
      child: Row(
        children: [
          IconButton(
              onPressed: onPressed,
              icon: isDrawerOpened
                  ? const Icon(Icons.close)
                  : const Icon(Icons.menu)),
          const Spacer(),
          const AppLogo(),
          const Spacer(),
          TextButton(onPressed: () {}, child: const Text("SIGN IN")),
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/cart.png",
                height: 20,
                width: 20,
              )),
        ],
      ),
    );
  }
}
