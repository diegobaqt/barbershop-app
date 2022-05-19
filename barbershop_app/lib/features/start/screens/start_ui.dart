import 'package:barbershop_app/features/start/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../res.dart';

class StartUI extends GetView<AuthController> {
  static const path = "/";

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        child: Text("Hola"),
      ),
    );
  }
}
