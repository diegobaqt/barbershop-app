import 'package:barbershop_app/data/models/response/barbershop_detail_response.dart';
import 'package:barbershop_app/data/repositories/public_repository.dart';
import 'package:barbershop_app/utils/base_controller.dart';
import 'package:get/get.dart';
import 'package:lifecycle/lifecycle.dart';

class BarbershopController extends BaseController {
  final PublicRepository _publicRepository = Get.find();

  final barbershopId = "".obs;
  final barbershop = BarbershopDetailResponse(
          null, null, null, null, null, null, null, null, null, null)
      .obs;

  @override
  void onInit() {
    if (Get.arguments != null) {
      barbershopId.value = Get.arguments.toString();
    }
    super.onInit();
  }

  @override
  Future onReady() async {
    await _getBarbershopById();
    super.onReady();
  }

  @override
  onLifecycleEvent(LifecycleEvent event) async {
    if (event == LifecycleEvent.active) {
      await _getBarbershopById();
    }
  }

  /// Networking
  _getBarbershopById() async {
    if (barbershopId.value != "") {
      final id = barbershopId.value;
      barbershop.value = await _publicRepository.getBarbershopsById(id);
    }
  }
}
