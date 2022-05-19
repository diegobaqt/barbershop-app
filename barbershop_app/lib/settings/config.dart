import 'package:barbershop_app/data/models/environment.dart';
import 'package:flutter/material.dart';

class Config {
  Config._(); //this is to prevent anyone from instantiating this object

  static const String defaultLanguage = 'es';

  static const double defaultMargin = 16;

  static const EdgeInsets defaultInsets = EdgeInsets.all(defaultMargin);

  static Environment environment = Environment.production;
}
