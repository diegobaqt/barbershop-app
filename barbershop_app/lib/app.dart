import 'package:barbershop_app/extensions/color.dart';
import 'package:barbershop_app/features/start/screens/start_ui.dart';
import 'package:barbershop_app/settings/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lifecycle/lifecycle.dart';

import 'extensions/colors.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: GeekColor.primaryDark,
      statusBarIconBrightness: Brightness.light,
    ));

    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.noTransition,
        // theme: AppThemes.lightTheme,
        title: 'Barbershop',
        darkTheme: ThemeData.dark(),
        theme: ThemeData(
          primarySwatch: GeekColors.primary,
          primaryColorLight: GeekColors.primaryLight,
          primaryColorDark: GeekColors.primaryDark,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.montserratTextTheme(),
        ),
        navigatorObservers: [defaultLifecycleObserver],
        themeMode: ThemeMode.light,
        initialRoute: StartUI.path,
        getPages: AppRoutes.routes);
  }
}
