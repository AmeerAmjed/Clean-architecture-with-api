import 'package:api/core/config/api.dart';
import 'package:api/core/model.dart';
import 'package:get/get_connect/connect.dart';
import 'package:get/instance_manager.dart';

abstract class Service<T extends Model> extends GetConnect {
  Api get api => Get.find<Api>();

  Future<List<T>?> findAll() async {
    List<T> models = [];
    try {
      String url = api.resolve(T);
      Response response = await get(url);

      for (var item in response.body) {
        models.add(Model.make<T>(item) as T);
      }
    } catch (e) {
      print(e);
    }
    return models;
  }

  Future<T?> find(String id) async {
    try {
      String url = api.resolve(T) + '/$id';
      Response response = await get(url);
      return Model.make<T>(response.body) as T;
    } catch (e) {
      print(e);
    }
  }
}
