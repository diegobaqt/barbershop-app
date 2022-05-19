import 'package:barbershop_app/data/models/environment.dart';
import 'package:barbershop_app/settings/config.dart';

class UrlPaths {
  UrlPaths._();

  static get host {
    switch (Config.environment) {
      case Environment.production:
        return hostProd;
      case Environment.staging:
        return hostStaging;
      case Environment.qa:
        return hostQA;
      default:
        return hostDevelop;
    }
  }

  static const hostDevelop = "https://barbershop-services.azurewebsites.net/";
  static const hostQA = "https://barbershop-services.azurewebsites.net/";
  static const hostStaging = "https://barbershop-services.azurewebsites.net/";
  static const hostProd = "https://barbershop-services.azurewebsites.net/";

  static String barbershop = "$host/Barbershop";
  static String getAllBarbershops = "$barbershop/GetAllActive/";
  static String getBarbershopsById = "$barbershop/GetDetailedById/";
}
