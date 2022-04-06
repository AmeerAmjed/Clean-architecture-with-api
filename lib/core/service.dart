import 'package:api/core/config/api.dart';
import 'package:api/core/model.dart';
import 'package:get/get_connect/connect.dart';
import 'package:get/instance_manager.dart';

abstract class Service<T extends Model> extends GetConnect {
  Api get api => Get.find<Api>();
  // Future<T> create();
  Future<List<T>?> findAll() async {
    String url = api.resolve(T);

    Response response = await get(url);
    if (!response.status.isOk) {
      throw Exception(response.statusCode ?? 500);
    }

    List<T> models = [];
    for (var item in response.body) {
      models.add(Model.make<T>(item) as T);
    }

    return models;
  }

  Future<T?> find(String id) async {
    String url = api.resolve(T) + '/$id';
    Response response = await get(url);
    if (!response.status.isOk) {
      throw Exception(response.statusCode ?? 500);
    }

    return Model.make<T>(response.body) as T;
  }
  // find();
  // update();
  // delete();
}
