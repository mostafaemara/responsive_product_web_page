import 'package:flutter/cupertino.dart';

enum ScreenType { mobile, desktop }

extension UIHelper on BuildContext {
  ScreenType screenType() {
    final width = MediaQuery.of(this).size.width;
    return width > 768 ? ScreenType.desktop : ScreenType.mobile;
  }
}
