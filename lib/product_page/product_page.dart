import 'package:flutter/material.dart';
import 'package:responsive_product_web_page/ui_helper.dart';

import 'widgets/desktop_appbar.dart';
import 'widgets/image_slider.dart';
import 'widgets/mobile_appbar.dart';

class ProductPage extends StatelessWidget {
  ProductPage({super.key});

  final verticalController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: context.screenType() == ScreenType.mobile ? const Drawer() : null,
      body: Scrollbar(
        controller: verticalController,
        thumbVisibility: true,
        child: SingleChildScrollView(
            controller: verticalController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Visibility(
                    visible: context.screenType() == ScreenType.desktop,
                    replacement: const MobileAppBar(),
                    child: const DesktopAppBar()),
                Row(
                  children: const [ImageSlider(images: [])],
                ),
                Container(
                  color: Colors.red,
                  height: 1400000,
                ),
              ],
            )),
      ),
    );
  }
}
