import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LocalStorage {
  static LocalStorage get to => Get.find();

  final GetStorage _store;
  LocalStorage(this._store);

  // String? get savedEmail => _store.read("saved_email");

  // set savedEmail(String? value) {
  //   _store.write("saved_email", value);
  // }
}
