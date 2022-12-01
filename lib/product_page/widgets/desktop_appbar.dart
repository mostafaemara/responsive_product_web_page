import 'package:flutter/material.dart';
import 'package:responsive_product_web_page/product_page/widgets/search_bar.dart';

import 'app_logo.dart';

class DesktopAppbar extends StatelessWidget {
  const DesktopAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 110),
      child: Row(
        children: [
          const AppLogo(),
          const Spacer(
            flex: 2,
          ),
          TextButton(onPressed: () {}, child: const Text("DEVICES")),
          const Spacer(),
          TextButton(onPressed: () {}, child: const Text("SOFTWARE")),
          const Spacer(),
          TextButton(
              onPressed: () {}, child: const Text("GAMES & ENTERTAINMENT")),
          const Spacer(),
          TextButton(onPressed: () {}, child: const Text("GIFT CARDS")),
          const Spacer(),
          TextButton(
              onPressed: () {}, child: const Text("EDUCATION & BUSINESS")),
          const Spacer(
            flex: 2,
          ),
          const SearchBar(),
          TextButton(onPressed: () {}, child: const Text("SIGN IN")),
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/cart.png",
                height: 20,
                width: 20,
              ))
        ],
      ),
    );
  }
}
