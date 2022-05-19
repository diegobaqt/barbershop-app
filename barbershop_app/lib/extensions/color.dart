import 'package:flutter/material.dart';

extension GeekColor on Color {
  static const primary = Color(0xFF0088E0);
  static const primaryLight = Color(0xFFA2BED5);
  static const primaryDark = Color(0xFF001529);

  static const secondary = Color(0xFFE24C3B);
  static const secondaryLight = Color(0xFFE88C82);
  static const secondaryDark = Color(0xFFB03B2E);

  static const font = Color(0xFF3C4043);

  static const black05 = Color(0x80000000);
  static const white = Color(0xFFFFFFFF);

  static const smoke = Color(0xFFE0E6ED);
  static const smokeDark = Color(0xFFD3DCE6);
  static const smokeExtraDark = Color(0xFFC0CCDA);

  static const snow = Color(0xFFF9FAFC);
  static const snowDark = Color(0xFFEFF2F7);
  static const snowExtraDark = Color(0xFFE5E9F2);

  static final shimmerBase = Colors.grey[300]!;
  static final shimmerHighlight = Colors.grey[100]!;

  MaterialColor toMaterialColor() {
    List strengths = <double>[.05];
    Map<int, Color> swatch = <int, Color>{};
    final int r = this.red, g = this.green, b = this.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(this.value, swatch);
  }
}

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
