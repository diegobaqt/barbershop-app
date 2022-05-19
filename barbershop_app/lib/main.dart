import 'package:barbershop_app/app.dart';
import 'package:flutter/material.dart';

import 'settings/di.dart';

void main() async {
  await setupDependencyInjection();
  runApp(App());
}
