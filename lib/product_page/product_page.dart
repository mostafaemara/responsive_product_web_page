import 'package:flutter/material.dart';
import 'package:responsive_product_web_page/product_page/widgets/app_drawer.dart';
import 'package:responsive_product_web_page/ui_helper.dart';

import 'widgets/desktop_appbar.dart';
import 'widgets/image_slider.dart';
import 'widgets/mobile_appbar.dart';

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
                    replacement: MobileAppBar(
                        onPressed: _isDrawerOpened ? _closeDrawer : _openDrawer,
                        isDrawerOpened: _isDrawerOpened),
                    child: const DesktopAppBar()),
                Row(
                  children: const [ImageSlider(images: [])],
                ),
                Visibility(
                    visible: _isDrawerOpened &&
                        context.screenType() == ScreenType.mobile,
                    child: const AppDrawer())
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
