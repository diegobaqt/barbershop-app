import 'package:barbershop_app/features/barbershop/screens/barbershop_ui.dart';
import 'package:barbershop_app/features/home/screens/home_ui.dart';
import 'package:barbershop_app/features/start/screens/start_ui.dart';
import 'package:get/get.dart';

class AppRoutes {
  AppRoutes._(); //this is to prevent anyone from instantiating this object

  static final routes = [
    GetPage(name: StartUI.path, page: () => StartUI()),
    GetPage(name: HomeUI.path, page: () => HomeUI()),
    GetPage(name: BarbershopUI.path, page: () => BarbershopUI()),
  ];
}

Future<T?>? go<T>({required String to, dynamic arguments}) {
  return Get.toNamed(to, arguments: arguments);
}
