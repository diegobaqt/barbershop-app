import 'package:barbershop_app/features/home/screens/home_ui.dart';
import 'package:barbershop_app/features/start/screens/start_ui.dart';
import 'package:get/get.dart';

class AuthController extends GetxService {
  static AuthController get to => Get.find();

  @override
  Future onReady() async {
    await _handleSession();
    super.onReady();
  }

  _handleSession() {
    if (Get.currentRoute == StartUI.path) {
      Future.delayed(
          const Duration(seconds: 2), () => Get.offAllNamed(HomeUI.path));
    }
  }
}
