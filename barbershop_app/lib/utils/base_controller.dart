import 'package:barbershop_app/data/local/local_storage.dart';
import 'package:barbershop_app/utils/logger.dart';
import 'package:get/get.dart';
import 'package:lifecycle/lifecycle.dart';

class BaseController extends GetxController {
  LocalStorage localStorage = Get.find();
  final isLoading = false.obs;

  onLifecycleEvent(LifecycleEvent event) {
    Log.to.d(event);
  }
}
