import 'dart:async';

import 'package:barbershop_app/data/models/response/barbershop_response.dart';
import 'package:barbershop_app/data/repositories/public_repository.dart';
import 'package:barbershop_app/utils/base_controller.dart';
import 'package:get/get.dart';
import 'package:lifecycle/lifecycle.dart';

class HomeController extends BaseController {
  final PublicRepository _publicRepository = Get.find();

  final barbershops = <BarbershopResponse>[].obs;
  final showList = true.obs;

  @override
  Future onReady() async {
    await _getAllBarbershop();
    super.onReady();
  }

  @override
  onLifecycleEvent(LifecycleEvent event) async {
    if (event == LifecycleEvent.active) {
      await _getAllBarbershop();
    }
  }

  toggleList() {
    showList.value = !(showList.value);
  }

  /// Networking
  _getAllBarbershop() async {
    barbershops.value = await _publicRepository.getAllBarbershop();
  }
}
