import 'package:flutter/material.dart';

import 'widgets/desktop_appbar.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: const [DesktopAppbar()],
      )),
    );
  }
}
