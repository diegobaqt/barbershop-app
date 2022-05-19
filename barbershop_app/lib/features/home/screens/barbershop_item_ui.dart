import 'package:barbershop_app/data/models/response/barbershop_response.dart';
import 'package:barbershop_app/data/remote/url_paths.dart';
import 'package:barbershop_app/extensions/sizebox.dart';
import 'package:barbershop_app/features/barbershop/screens/barbershop_ui.dart';
import 'package:barbershop_app/settings/app_routes.dart';
import 'package:barbershop_app/settings/config.dart';
import 'package:flutter/material.dart';

class BarbershopItemUI extends StatelessWidget {
  final int index;
  final BarbershopResponse barbershop;

  BarbershopItemUI(this.index, this.barbershop);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () async {
          if (barbershop.barbershopId != null) {
            await go(to: BarbershopUI.path, arguments: barbershop.barbershopId);
          }
        },
        child: _getCard());
  }

  Widget _getCard() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8))),
            padding: Config.defaultInsets,
            child: Row(
              children: [
                Image.network(
                  barbershop.imageUrl?.isNotEmpty ?? false
                      ? UrlPaths.host + barbershop.imageUrl
                      : "https://logowik.com/content/uploads/images/flutter5786.jpg",
                  width: 100,
                  height: 100,
                ),
                SizedBoxExt.fromWidthDefault(),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      barbershop.name ?? "-",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(barbershop.address ?? "-"),
                    Text(barbershop.email ?? "-"),
                    Text(barbershop.phone ?? "-"),
                  ],
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
