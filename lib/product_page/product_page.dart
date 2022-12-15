import 'package:flutter/material.dart';
import 'package:responsive_product_web_page/product_page/widgets/app_drawer.dart';
import 'package:responsive_product_web_page/product_page/widgets/image_slider.dart';
import 'package:responsive_product_web_page/ui_helper.dart';

import 'widgets/desktop_appbar.dart';

import 'widgets/mobile_appbar.dart';
import 'widgets/product_options.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  bool _isDrawerOpened = false;

  final verticalController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenType = context.screenType();
    return Scaffold(
      drawer: screenType == ScreenType.mobile ? const Drawer() : null,
      body: Scrollbar(
        controller: verticalController,
        thumbVisibility: true,
        child: SingleChildScrollView(
            controller: verticalController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Visibility(
                    visible: screenType == ScreenType.desktop,
                    replacement: MobileAppBar(
                        onPressed: _isDrawerOpened ? _closeDrawer : _openDrawer,
                        isDrawerOpened: _isDrawerOpened),
                    child: const DesktopAppBar()),
                Visibility(
                    visible: _isDrawerOpened && screenType == ScreenType.mobile,
                    child: const AppDrawer()),
                const SizedBox(
                  height: 50,
                ),
                Flex(
                  direction: screenType == ScreenType.desktop
                      ? Axis.horizontal
                      : Axis.vertical,
                  children: [
                    Visibility(
                      visible: screenType == ScreenType.desktop,
                      child: const Spacer(),
                    ),
                    Expanded(
                      flex: screenType == ScreenType.desktop ? 8 : 0,
                      child: ImageSlider(
                        images: const [
                          "https://raw.githubusercontent.com/mostafaemara/responsive_product_web_page/master/resources/xbox_controller_1.jpg",
                          "https://raw.githubusercontent.com/mostafaemara/responsive_product_web_page/master/resources/xbox_controller_2.jpg",
                          "https://raw.githubusercontent.com/mostafaemara/responsive_product_web_page/master/resources/xbox_controller_3.jpg",
                          "https://raw.githubusercontent.com/mostafaemara/responsive_product_web_page/master/resources/xbox_controller_4.jpg"
                        ],
                        screenType: screenType,
                      ),
                    ),
                    Visibility(
                      visible: screenType == ScreenType.desktop,
                      child: const Spacer(),
                    ),
                    const ProductOptions(),
                    Visibility(
                      visible: screenType == ScreenType.desktop,
                      child: const Spacer(),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }

  void _openDrawer() {
    setState(() {
      _isDrawerOpened = true;
    });
  }

  void _closeDrawer() {
    setState(() {
      _isDrawerOpened = false;
    });
  }
}
