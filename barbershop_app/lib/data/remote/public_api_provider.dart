import 'package:barbershop_app/data/local/local_storage.dart';
import 'package:barbershop_app/data/models/response/barbershop_detail_response.dart';
import 'package:barbershop_app/data/models/response/barbershop_response.dart';
import 'package:barbershop_app/data/remote/url_paths.dart';
import 'package:barbershop_app/utils/logger.dart';
import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:g_json/g_json.dart';

class PublicApiProvider {
  final Dio _dio;
  final LocalStorage _localStorage;
  final CacheOptions _cacheOptions;

  PublicApiProvider(this._dio, this._localStorage, this._cacheOptions);

  Future<List<BarbershopResponse>> getAllBarbershop() async {
    try {
      final response = await _dio.get(UrlPaths.getAllBarbershops);
      final json = JSON(response.data);
      return json.listValue
          .map((e) => BarbershopResponse.fromJson(e.mapObject ?? {}))
          .toList();
    } on DioError catch (error) {
      Log.to.e("Exception occured: $error");
      throw Exception();
    }
  }

  Future<BarbershopDetailResponse> getBarbershopsById(
      String barbershopId) async {
    Map<String, dynamic> queryParameters = {"barbershopId": barbershopId};
    try {
      final response = await _dio.get(UrlPaths.getBarbershopsById,
          queryParameters: queryParameters);
      final json = JSON(response.data);
      return BarbershopDetailResponse.fromJson(json.mapObject ?? {});
    } on DioError catch (error) {
      Log.to.e("Exception occured: $error");
      throw Exception();
    }
  }
}
