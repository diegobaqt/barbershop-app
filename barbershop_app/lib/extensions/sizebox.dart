import 'package:barbershop_app/settings/config.dart';
import 'package:flutter/widgets.dart';

extension SizedBoxExt on SizedBox {
  static SizedBox fromHeight(double height) => SizedBox(height: height);

  static SizedBox fromHeightDefault() =>
      const SizedBox(height: Config.defaultMargin);

  static SizedBox fromWidth(double width) => SizedBox(width: width);

  static SizedBox fromWidthDefault() =>
      const SizedBox(width: Config.defaultMargin);
}
