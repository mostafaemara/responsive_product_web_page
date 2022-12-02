import 'package:flutter/material.dart';
import 'package:responsive_product_web_page/product_page/widgets/image_slider.dart';

import 'widgets/desktop_appbar.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          const DesktopAppbar(),
          Row(
            children: const [ImageSlider(images: [])],
          )
        ],
      )),
    );
  }
}
