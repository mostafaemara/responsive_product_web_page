import 'package:flutter/material.dart';
import 'package:responsive_product_web_page/colors.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.grey,
      width: double.infinity,
      child: Column(children: [
        TextButton(onPressed: () {}, child: const Text("DEVICES")),
        TextButton(onPressed: () {}, child: const Text("SOFTWARE")),
        TextButton(
            onPressed: () {}, child: const Text("GAMES & ENTERTAINMENT")),
        TextButton(onPressed: () {}, child: const Text("GIFT CARDS")),
        TextButton(onPressed: () {}, child: const Text("EDUCATION & BUSINESS")),
      ]),
    );
  }
}
