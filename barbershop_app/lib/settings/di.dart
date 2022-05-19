import 'package:barbershop_app/data/local/local_storage.dart';
import 'package:barbershop_app/data/remote/public_api_provider.dart';
import 'package:barbershop_app/data/remote/url_paths.dart';
import 'package:barbershop_app/data/repositories/public_repository.dart';
import 'package:barbershop_app/features/barbershop/controllers/barbershop_controller.dart';
import 'package:barbershop_app/features/home/controllers/home_controller.dart';
import 'package:barbershop_app/features/start/controllers/auth_controller.dart';
import 'package:barbershop_app/utils/logger.dart';
import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:logger/logger.dart';
import 'package:package_info/package_info.dart';
import 'package:uuid/uuid.dart';
import 'package:path_provider/path_provider.dart';

setupDependencyInjection() async {
  //Calling this method is useful to get a head-start on app initialization
  await GetStorage.init();
  final appDirectory = await getApplicationDocumentsDirectory();
  final appVersion = await getVersion();

  final hivePath = "${appDirectory.path}/hive";

  Get.put<Logger>(Logger(), permanent: true);
  Get.put<Log>(Log(Get.find<Logger>()), permanent: true);

  // Storage
  Get.put<GetStorage>(GetStorage(), permanent: true);
  Get.put<LocalStorage>(LocalStorage(Get.find<GetStorage>()), permanent: true);
  Get.put<CacheStore>(HiveCacheStore(hivePath), permanent: true);

  // Networking
  Get.put<CacheOptions>(_provideCacheOptions(Get.find<CacheStore>()),
      permanent: true);
  Get.put<Dio>(_provideDio(Get.find<CacheOptions>()), permanent: true);

  /// Repository
  Get.put<PublicApiProvider>(
      PublicApiProvider(
          Get.find<Dio>(), Get.find<LocalStorage>(), Get.find<CacheOptions>()),
      permanent: true);

  Get.put<PublicRepository>(PublicRepository(Get.find<PublicApiProvider>()),
      permanent: true);

  // Controllers
  Get.put(AuthController(), permanent: true);
  Get.lazyPut(() => HomeController(), fenix: true);
  Get.lazyPut(() => BarbershopController(), fenix: true);
}

Dio _provideDio(CacheOptions cacheOptions) {
  var dio = Dio()
    ..interceptors.add(DioCacheInterceptor(options: cacheOptions))
    ..options.connectTimeout = 30000
    ..options.receiveTimeout = 30000
    ..options.baseUrl = UrlPaths.host
    ..interceptors.add(LogInterceptor(
        request: false,
        requestHeader: false,
        responseHeader: false,
        responseBody: false));
  return dio;
}

String _postCacheKeyBuilder(RequestOptions request) {
  var id = request.uri.toString();
  if (request.method == "POST" && request.data != null) {
    id += request.data.toString();
    return const Uuid().v5(Uuid.NAMESPACE_OID, id);
  } else {
    return const Uuid().v5(Uuid.NAMESPACE_URL, id);
  }
}

CacheOptions _provideCacheOptions(CacheStore cacheStore) => CacheOptions(
      store: cacheStore,
      policy: CachePolicy.forceCache,
      // Optional. Returns a cached response on error but for statuses 401 & 403.
      hitCacheOnErrorExcept: [401, 403],
      // Optional. Overrides any HTTP directive to delete entry past this duration.
      maxStale: const Duration(seconds: 0),
      priority: CachePriority.normal,
      cipher: null,
      keyBuilder: _postCacheKeyBuilder,
      allowPostMethod: true,
    );

Future<String> getVersion() async {
  final info = await PackageInfo.fromPlatform();
  return "${info.version}+${info.buildNumber}";
}
