import 'package:flutter/material.dart';

import 'color.dart';

//GeekColor in MateriaColor
extension GeekColors on Colors {
  static final primary = GeekColor.primary.toMaterialColor();
  static final primaryLight = GeekColor.primaryLight.toMaterialColor();
  static final primaryDark = GeekColor.primaryDark.toMaterialColor();

  static final secondary = GeekColor.secondary.toMaterialColor();
  static final secondaryLight = GeekColor.secondaryLight.toMaterialColor();
  static final secondaryDark = GeekColor.secondaryDark.toMaterialColor();

  static final black05 = GeekColor.black05.toMaterialColor();

  static final font = GeekColor.font.toMaterialColor();

  static final smoke = GeekColor.smoke.toMaterialColor();
  static final smokeDark = GeekColor.smokeDark.toMaterialColor();
  static final smokeExtraDark = GeekColor.smokeExtraDark.toMaterialColor();

  static final snow = GeekColor.snow.toMaterialColor();
  static final snowDark = GeekColor.snowDark.toMaterialColor();
  static final snowExtraDark = GeekColor.snowExtraDark.toMaterialColor();
}
