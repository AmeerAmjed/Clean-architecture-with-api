import 'package:api/core/config/api.dart';
import 'package:api/core/config/api_init.dart';
import 'package:get/instance_manager.dart';

class App {
  static init() async {
    await Get.putAsync<Api>(
      () => ApiInit().init(),
      permanent: true,
    );
  }
}
