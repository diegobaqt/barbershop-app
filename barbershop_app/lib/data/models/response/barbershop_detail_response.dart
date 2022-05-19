import 'package:g_json/g_json.dart';

class BarbershopDetailResponse {
  final String? barbershopId;
  final String? name;
  final String? address;
  final String? email;
  final String? phone;
  final double? latitude;
  final double? longitude;
  final String? schedule;
  final String? imageUrl;
  final List<ServiceResponse>? services;

  BarbershopDetailResponse(
      this.barbershopId,
      this.name,
      this.address,
      this.email,
      this.phone,
      this.latitude,
      this.longitude,
      this.schedule,
      this.imageUrl,
      this.services);

  BarbershopDetailResponse.fromJson(Map<String, dynamic> json)
      : barbershopId = json['barbershopId'].toString(),
        name = json['name'],
        address = json['address'],
        email = json['email'],
        phone = json['phone'],
        latitude = double.tryParse((json['latitude']).toString()),
        longitude = double.tryParse((json['longitude']).toString()),
        schedule = json['schedule'],
        imageUrl = json['imageUrl'].toString(),
        services = json['services'] == null
            ? null
            : (JSON(json['services']))
                .listValue
                .map((e) => ServiceResponse.fromJson(e.mapObject ?? {}))
                .toList();
}

class ServiceResponse {
  final String? barbershopAttentionId;
  final String? name;
  final double? price;

  ServiceResponse(this.barbershopAttentionId, this.name, this.price);

  ServiceResponse.fromJson(Map<String, dynamic> json)
      : barbershopAttentionId = json['barbershopAttentionId'],
        name = json['name'],
        price = double.tryParse((json['value']).toString());
}
