import 'package:barbershop_app/data/models/response/barbershop_detail_response.dart';
import 'package:barbershop_app/settings/config.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ServiceItemUI extends StatelessWidget {
  final int index;
  final ServiceResponse service;

  final currencyFormat = NumberFormat("#,##0", "es_CO");

  ServiceItemUI(this.index, this.service);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 8, right: 8),
      child: _getCard(),
    );
  }

  Widget _getCard() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8))),
              padding: Config.defaultInsets,
              child: Row(children: [
                Text(
                  service.name ?? "-",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Expanded(child: Container()),
                Text("\$ " + currencyFormat.format(service.price)),
              ])),
        ],
      ),
    );
  }
}
