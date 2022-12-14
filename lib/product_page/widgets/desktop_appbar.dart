import 'package:flutter/material.dart';
import 'package:responsive_product_web_page/colors.dart';
import 'package:responsive_product_web_page/product_page/widgets/search_bar.dart';

import 'app_logo.dart';

class DesktopAppBar extends StatelessWidget {
  const DesktopAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final remainingWidth = MediaQuery.of(context).size.width - 611;
    const viewsCounts = 5;
    final numberOfVisibleViews = (remainingWidth ~/ 120).clamp(0, viewsCounts);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 9),
      child: Row(
        children: [
          const AppLogo(),
          const Spacer(
            flex: 6,
          ),
          ...[
            TextButton(onPressed: () {}, child: const Text("DEVICES")),
            TextButton(onPressed: () {}, child: const Text("SOFTWARE")),
            TextButton(
                onPressed: () {}, child: const Text("GAMES & ENTERTAINMENT")),
            TextButton(onPressed: () {}, child: const Text("GIFT CARDS")),
            TextButton(
                onPressed: () {}, child: const Text("EDUCATION & BUSINESS")),
          ].sublist(0, numberOfVisibleViews),
          Visibility(
            visible:
                numberOfVisibleViews < viewsCounts && numberOfVisibleViews > 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              width: 120,
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  enableFeedback: false,
                  itemHeight: 60,
                  elevation: 0,
                  isExpanded: true,
                  iconDisabledColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  isDense: true,
                  style: const TextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                      fontFamily: "BarlowCondensed"),
                  hint: const Text(
                    "More",
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 16,
                        fontFamily: "BarlowCondensed"),
                  ),
                  items: const [
                    DropdownMenuItem<String>(
                      value: "DEVICES",
                      child: Text("DEVICES"),
                    ),
                    DropdownMenuItem<String>(
                      value: "SOFTWARE",
                      child: Text("SOFTWARE"),
                    ),
                    DropdownMenuItem<String>(
                      value: "GAMES & ENTERTAINMENT",
                      child: Text("GAMES & ENTERTAINMENT"),
                    ),
                    DropdownMenuItem<String>(
                      value: "GIFT CARDS",
                      child: Text("GIFT CARDS"),
                    ),
                    DropdownMenuItem<String>(
                      value: "EDUCATION & BUSINESS",
                      child: Text("EDUCATION & BUSINESS"),
                    )
                  ].sublist(numberOfVisibleViews, viewsCounts),
                  onChanged: (value) {},
                ),
              ),
            ),
          ),
          const Spacer(
            flex: 6,
          ),
          const SizedBox(height: 30, width: 200, child: SearchBar()),
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
