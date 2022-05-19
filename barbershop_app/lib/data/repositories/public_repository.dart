import 'package:barbershop_app/data/models/response/barbershop_detail_response.dart';
import 'package:barbershop_app/data/models/response/barbershop_response.dart';
import 'package:barbershop_app/data/remote/public_api_provider.dart';

class PublicRepository {
  final PublicApiProvider _publicApiProvider;

  PublicRepository(this._publicApiProvider);

  Future<List<BarbershopResponse>> getAllBarbershop() =>
      _publicApiProvider.getAllBarbershop();

  Future<BarbershopDetailResponse> getBarbershopsById(String barbershopId) =>
      _publicApiProvider.getBarbershopsById(barbershopId);
}
