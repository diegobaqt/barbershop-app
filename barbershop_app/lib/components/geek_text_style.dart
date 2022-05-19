import 'package:barbershop_app/extensions/color.dart';
import 'package:barbershop_app/extensions/colors.dart';
import 'package:flutter/material.dart';

class GeekTextStyle {
  static const double defaultFontSize = 16;

  static TextStyle base() => const TextStyle(
      fontSize: defaultFontSize,
      fontWeight: FontWeight.normal,
      color: GeekColor.black05);

  /// bold
  static TextStyle bold() => base().copyWith(fontWeight: FontWeight.bold);

  static TextStyle boldPrimary() => bold().copyWith(color: GeekColor.primary);

  static TextStyle boldPrimary8() => boldPrimary().copyWith(fontSize: 8);

  static TextStyle boldPrimary10() => boldPrimary().copyWith(fontSize: 10);

  static TextStyle boldPrimary12() => boldPrimary().copyWith(fontSize: 12);

  static TextStyle boldPrimary14() => boldPrimary().copyWith(fontSize: 14);

  static TextStyle boldPrimary20() => boldPrimary().copyWith(fontSize: 20);

  /// bold Secondary

  static TextStyle boldSecondary() =>
      bold().copyWith(color: GeekColor.secondary);

  static TextStyle boldSecondary10() => boldSecondary().copyWith(fontSize: 10);

  static TextStyle boldSecondary12() => boldSecondary().copyWith(fontSize: 12);

  static TextStyle boldSecondary14() => boldSecondary().copyWith(fontSize: 14);

  static TextStyle boldSecondary18() => boldSecondary().copyWith(fontSize: 18);

  static TextStyle boldSecondary20() => boldSecondary().copyWith(fontSize: 20);

  static TextStyle boldSecondary24() => boldSecondary().copyWith(fontSize: 24);

  // regular Primary

  static TextStyle regularPrimary() =>
      regular().copyWith(color: GeekColor.primary);

  static TextStyle regularPrimary8() => regularPrimary().copyWith(fontSize: 8);

  static TextStyle regularPrimary10() =>
      regularPrimary().copyWith(fontSize: 10);

  static TextStyle regularPrimary12() =>
      regularPrimary().copyWith(fontSize: 12);

  static TextStyle regularPrimary14() =>
      regularPrimary().copyWith(fontSize: 14);

  static TextStyle regularPrimary16() =>
      regularPrimary().copyWith(fontSize: 16);

  static TextStyle regularPrimary18() =>
      regularPrimary().copyWith(fontSize: 18);

  static TextStyle regularPrimary20() =>
      regularPrimary().copyWith(fontSize: 20);

  static TextStyle regularPrimary24() =>
      regularPrimary().copyWith(fontSize: 24);

  // regular Secondary

  static TextStyle regularSecondary() =>
      regular().copyWith(color: GeekColor.secondary);

  static TextStyle regularSecondary10() =>
      regularSecondary().copyWith(fontSize: 10);

  static TextStyle regularSecondary12() =>
      regularSecondary().copyWith(fontSize: 12);

  static TextStyle regularSecondary14() =>
      regularSecondary().copyWith(fontSize: 14);

  static TextStyle regularSecondary16() =>
      regularSecondary().copyWith(fontSize: 16);

  static TextStyle regularSecondary18() =>
      regularSecondary().copyWith(fontSize: 18);

  static TextStyle regularSecondary20() =>
      regularSecondary().copyWith(fontSize: 20);

  static TextStyle regularSecondary24() =>
      regularSecondary().copyWith(fontSize: 24);

  static TextStyle boldWhite() => bold().copyWith(color: Colors.white);

  static TextStyle boldWhite10() => boldWhite().copyWith(fontSize: 10);

  static TextStyle boldWhite14() => boldWhite().copyWith(fontSize: 14);

  static TextStyle boldBlack() => bold().copyWith(color: Colors.black);

  static TextStyle boldBlack10() => boldBlack().copyWith(fontSize: 10);

  static TextStyle boldBlack12() => boldBlack().copyWith(fontSize: 12);

  static TextStyle boldBlack14() => boldBlack().copyWith(fontSize: 14);

  static TextStyle boldBlack16() => boldBlack().copyWith(fontSize: 16);

  static TextStyle boldBlack18() => boldBlack().copyWith(fontSize: 18);

  static TextStyle boldBlack20() => boldBlack().copyWith(fontSize: 20);

  static TextStyle boldBlack22() => boldBlack().copyWith(fontSize: 22);

  // semibold

  static TextStyle semibold() => base().copyWith(fontWeight: FontWeight.w600);

  static TextStyle semiboldPrimary() =>
      semibold().copyWith(color: GeekColor.primary);

  static TextStyle semiboldPrimary10() =>
      semiboldPrimary().copyWith(fontSize: 10);

  static TextStyle semiboldPrimary12() =>
      semiboldPrimary().copyWith(fontSize: 12);

  static TextStyle semiboldPrimary14() =>
      semiboldPrimary().copyWith(fontSize: 14);

  static TextStyle semiboldPrimary18() =>
      semiboldPrimary().copyWith(fontSize: 18);

  static TextStyle semiboldPrimary20() =>
      semiboldPrimary().copyWith(fontSize: 20);

  static TextStyle semiboldPrimary24() =>
      semiboldPrimary().copyWith(fontSize: 24);

  static TextStyle semiboldSecondary() =>
      semibold().copyWith(color: GeekColor.secondary);

  static TextStyle semiboldSecondary10() =>
      semiboldSecondary().copyWith(fontSize: 10);

  static TextStyle semiboldSecondary12() =>
      semiboldSecondary().copyWith(fontSize: 12);

  static TextStyle semiboldSecondary14() =>
      semiboldSecondary().copyWith(fontSize: 14);

  static TextStyle semiboldSecondary16() =>
      semiboldSecondary().copyWith(fontSize: 16);

  static TextStyle semiboldSecondary18() =>
      semiboldSecondary().copyWith(fontSize: 18);

  static TextStyle semiboldSecondary20() =>
      semiboldSecondary().copyWith(fontSize: 20);

  static TextStyle semiboldSecondary24() =>
      semiboldSecondary().copyWith(fontSize: 24);

  static TextStyle semiboldSnowdark() =>
      semibold().copyWith(color: GeekColor.snowDark);

  static TextStyle semiboldSnowdark12() =>
      semiboldSnowdark().copyWith(fontSize: 12);

  static TextStyle semiboldSnowdark24() =>
      semiboldSnowdark().copyWith(fontSize: 24);

  static TextStyle semiboldWhite() => semibold().copyWith(color: Colors.white);

  static TextStyle semiboldWhite10() => semiboldWhite().copyWith(fontSize: 10);

  static TextStyle semiboldWhite12() => semiboldWhite().copyWith(fontSize: 12);

  static TextStyle semiboldWhite14() => semiboldWhite().copyWith(fontSize: 14);

  static TextStyle semiboldWhite18() => semiboldWhite().copyWith(fontSize: 18);

  static TextStyle semiboldBlack() => semibold().copyWith(color: Colors.black);

  static TextStyle semiboldBlack8() => semiboldBlack().copyWith(fontSize: 8);

  static TextStyle semiboldBlack12() => semiboldBlack().copyWith(fontSize: 12);

  static TextStyle semiboldBlack14() => semiboldBlack().copyWith(fontSize: 14);

  static TextStyle semiboldBlack16() => semiboldBlack().copyWith(fontSize: 16);

  static TextStyle semiboldBlack18() => semiboldBlack().copyWith(fontSize: 18);

  static TextStyle semiboldBlack20() => semiboldBlack().copyWith(fontSize: 20);

  static TextStyle medium() => base().copyWith(fontWeight: FontWeight.w500);

  static TextStyle mediumPrimary() =>
      medium().copyWith(color: GeekColor.primary);

  static TextStyle mediumPrimary12() => mediumPrimary().copyWith(fontSize: 12);

  static TextStyle mediumPrimary14() => mediumPrimary().copyWith(fontSize: 14);

  static TextStyle mediumPrimary18() => mediumPrimary().copyWith(fontSize: 18);

  static TextStyle mediumSecondary() =>
      medium().copyWith(color: GeekColor.secondary);

  static TextStyle mediumSecondary10() =>
      mediumSecondary().copyWith(fontSize: 10);

  static TextStyle mediumSecondary12() =>
      mediumSecondary().copyWith(fontSize: 12);

  static TextStyle mediumSecondary14() =>
      mediumSecondary().copyWith(fontSize: 14);

  static TextStyle mediumSecondary16() =>
      mediumSecondary().copyWith(fontSize: 16);

  static TextStyle mediumSmokeExtraDark() =>
      medium().copyWith(color: GeekColor.smokeExtraDark);

  static TextStyle mediumSmokeExtraDark10() =>
      mediumSmokeExtraDark().copyWith(fontSize: 10);

  static TextStyle mediumSmokeExtraDark12() =>
      mediumSmokeExtraDark().copyWith(fontSize: 12);

  static TextStyle mediumSmokeExtraDark14() =>
      mediumSmokeExtraDark().copyWith(fontSize: 14);

  static TextStyle mediumWhite() => medium().copyWith(color: Colors.white);

  static TextStyle mediumWhite14() => mediumWhite().copyWith(fontSize: 14);

  static TextStyle mediumWhite18() => mediumWhite().copyWith(fontSize: 18);

  static TextStyle mediumWhite20() => mediumWhite().copyWith(fontSize: 20);

  static TextStyle mediumWhite24() => mediumWhite().copyWith(fontSize: 24);

  static TextStyle mediumWhite12() => mediumWhite().copyWith(fontSize: 12);

  static TextStyle mediumBlack() => medium().copyWith(color: Colors.black);

  static TextStyle mediumBlack12() => mediumBlack().copyWith(fontSize: 12);

  static TextStyle mediumBlack14() => mediumBlack().copyWith(fontSize: 14);

  static TextStyle mediumBlack16() => mediumBlack().copyWith(fontSize: 16);

  static TextStyle mediumBlack24() => mediumBlack().copyWith(fontSize: 24);

  static TextStyle mediumFont() => medium().copyWith(color: GeekColors.font);

  static TextStyle mediumFont12() => mediumFont().copyWith(fontSize: 12);

  static TextStyle mediumFont14() => mediumFont().copyWith(fontSize: 14);

  static TextStyle mediumFont16() => mediumFont().copyWith(fontSize: 16);

  static TextStyle mediumFont20() => mediumFont().copyWith(fontSize: 20);

  static TextStyle mediumFont24() => mediumFont().copyWith(fontSize: 24);

  static TextStyle regular() => base().copyWith(fontWeight: FontWeight.w400);

  static TextStyle regularBlack() => regular().copyWith(color: Colors.black);

  static TextStyle regularBlack8() =>
      regular().copyWith(color: Colors.black, fontSize: 8);

  static TextStyle regularBlack10() =>
      regular().copyWith(color: Colors.black, fontSize: 10);

  static TextStyle regularBlack12() =>
      regular().copyWith(color: Colors.black, fontSize: 12);

  static TextStyle regularBlack14() =>
      regular().copyWith(color: Colors.black, fontSize: 14);

  static TextStyle regularWhite12() =>
      regular().copyWith(color: Colors.white, fontSize: 12);

  static TextStyle regularWhite14() =>
      regular().copyWith(color: Colors.white, fontSize: 14);

  static TextStyle regularWhite18() =>
      regular().copyWith(color: Colors.white, fontSize: 18);
}
