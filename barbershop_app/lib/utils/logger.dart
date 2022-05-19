import 'package:get/get.dart';
import 'package:logger/logger.dart';

class Log {
  static Logger get to => Get.find<Log>()._logger;

  final Logger _logger;

  Log(this._logger);
}
