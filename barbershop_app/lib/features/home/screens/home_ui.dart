import 'dart:async';

import 'package:barbershop_app/components/geek_button.dart';
import 'package:barbershop_app/extensions/color.dart';
import 'package:barbershop_app/extensions/sizebox.dart';
import 'package:barbershop_app/features/home/controllers/home_controller.dart';
import 'package:barbershop_app/features/home/screens/barbershop_item_ui.dart';
import 'package:barbershop_app/settings/config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lifecycle/lifecycle.dart';

class HomeUI extends GetView<HomeController> {
  static const path = "/home";

  final Completer<GoogleMapController> googleMapController = Completer();
  var loaded = false;

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return LifecycleWrapper(
      onLifecycleEvent: controller.onLifecycleEvent,
      child: Scaffold(
          body: SafeArea(
              child: Obx(() => Container(
                  color: Colors.white,
                  child: controller.barbershops.isEmpty
                      ? Expanded(child: Container())
                      : Container(
                          margin: Config.defaultInsets,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(child: _getSearcherBar()),
                                  GeekButton.white(
                                      text: controller.showList.value
                                          ? "Mapa"
                                          : "Lista",
                                      iconStart: true,
                                      hasElevation: false,
                                      icon: controller.showList.value
                                          ? const Icon(
                                              Icons.location_on,
                                              color: GeekColor.primary,
                                            )
                                          : const Icon(
                                              Icons.list,
                                              color: GeekColor.primary,
                                            ),
                                      onPressed: () => controller.toggleList())
                                ],
                              ),
                              SizedBoxExt.fromHeightDefault(),
                              controller.showList.value
                                  ? _getBarbershopList()
                                  : Expanded(child: _getMap())
                            ],
                          )))))),
    );
  }

  Widget _getMap() {
    return GoogleMap(
      initialCameraPosition: _kGooglePlex,
      onMapCreated: (GoogleMapController controller) {
        if (!loaded) {
          googleMapController.complete(controller);
          loaded = true;
        }
      },
    );
  }

  Widget _getSearcherBar() {
    return Container(
        color: Colors.white,
        child: TextFormField(
          //controller: controller.passwordCtrl,
          style: const TextStyle(color: Colors.black),
          enableSuggestions: false,
          decoration: const InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(12, 12, 12, 12),
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: GeekColor.primary)),
              hintText: "Buscar",
              icon: Icon(Icons.search)),
        ));
  }

  Widget _getBarbershopList() {
    return Expanded(
        child: ListView.separated(
            itemCount: controller.barbershops.length,
            itemBuilder: (context, index) {
              return BarbershopItemUI(index, controller.barbershops[index]);
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 2,
              );
            }));
  }
}
