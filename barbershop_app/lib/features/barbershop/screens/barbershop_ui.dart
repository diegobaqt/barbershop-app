import 'dart:ui';

import 'package:barbershop_app/components/geek_text_style.dart';
import 'package:barbershop_app/data/remote/url_paths.dart';
import 'package:barbershop_app/extensions/color.dart';
import 'package:barbershop_app/extensions/colors.dart';
import 'package:barbershop_app/extensions/sizebox.dart';
import 'package:barbershop_app/features/barbershop/controllers/barbershop_controller.dart';
import 'package:barbershop_app/features/barbershop/screens/service_item_ui.dart';
import 'package:barbershop_app/settings/config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lifecycle/lifecycle.dart';

class BarbershopUI extends GetView<BarbershopController> {
  static const path = "/barbershop-detail";

  @override
  Widget build(BuildContext context) {
    return LifecycleWrapper(
        onLifecycleEvent: controller.onLifecycleEvent,
        child: Scaffold(
            body: SafeArea(
                child: Obx(() => Container(
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: Config.defaultInsets,
                          height: 182,
                          width: double.maxFinite,
                          color: GeekColors.primaryDark,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _getHeader(),
                            ],
                          ),
                        ),
                        SizedBoxExt.fromHeightDefault(),
                        _getContactSection(),
                        SizedBoxExt.fromHeightDefault(),
                        _getServicesSection(),
                        _getServiceList()
                      ],
                    ))))));
  }

  Widget _getHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Container(
              width: 150.0,
              height: 150.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(controller
                                  .barbershop.value.imageUrl?.isNotEmpty ??
                              false
                          ? UrlPaths.host + controller.barbershop.value.imageUrl
                          : "https://logowik.com/content/uploads/images/flutter5786.jpg")))),
        ),
        Expanded(
          flex: 2,
          child: Container(
            padding: Config.defaultInsets,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  controller.barbershop.value.name ?? "-",
                  style: GeekTextStyle.mediumWhite24(),
                ),
                Text(
                  controller.barbershop.value.schedule ?? "-",
                  style: GeekTextStyle.mediumWhite14(),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _getContactSection() {
    return Container(
      margin: Config.defaultInsets,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Datos de contacto",
                style: GeekTextStyle.semiboldSecondary20()),
            SizedBoxExt.fromHeightDefault(),
            _getIconRow(controller.barbershop.value.phone ?? "-", Icons.phone),
            _getIconRow(controller.barbershop.value.address ?? "-",
                Icons.location_on_outlined),
            _getIconRow(
                controller.barbershop.value.email ?? "-", Icons.email_outlined),
          ]),
    );
  }

  Widget _getServicesSection() {
    return Container(
      margin: Config.defaultInsets,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Servicios", style: GeekTextStyle.semiboldSecondary20()),
          ]),
    );
  }

  Widget _getIconRow(String text, IconData icon) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Icon(
            icon,
            size: 16,
          ),
          SizedBoxExt.fromWidth(4),
          Text(text, style: GeekTextStyle.mediumFont16()),
        ]),
        SizedBoxExt.fromHeight(4)
      ],
    );
  }

  Widget _getServiceList() {
    return Expanded(
        child: ListView.separated(
            itemCount: controller.barbershop.value.services != null
                ? controller.barbershop.value.services!.length
                : 0,
            itemBuilder: (context, index) {
              return ServiceItemUI(
                  index, controller.barbershop.value.services![index]);
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 2,
              );
            }));
  }
}
