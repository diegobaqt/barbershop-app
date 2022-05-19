class BarbershopResponse {
  final String? barbershopId;
  final String? name;
  final String? address;
  final String? email;
  final String? phone;
  final double? latitude;
  final double? longitude;
  final String? schedule;
  final String? imageUrl;

  BarbershopResponse(this.barbershopId, this.name, this.address, this.email,
      this.phone, this.latitude, this.longitude, this.schedule, this.imageUrl);

  BarbershopResponse.fromJson(Map<String, dynamic> json)
      : barbershopId = json['barbershopId'].toString(),
        name = json['name'],
        address = json['address'],
        email = json['email'],
        phone = json['phone'],
        latitude = double.tryParse((json['latitude']).toString()),
        longitude = double.tryParse((json['longitude']).toString()),
        schedule = json['schedule'],
        imageUrl = json['imageUrl'].toString();
}
