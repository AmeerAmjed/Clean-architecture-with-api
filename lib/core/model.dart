import 'package:api/base/model/empty.dart';
import 'package:api/base/model/post.dart';
import 'package:api/base/model/user.dart';

abstract class Model {
  static Model make<T extends Model>(Map<String, dynamic> data) {
    switch (T) {
      case Post:
        return Post.fromJson(data);
      case User:
        return User.fromJson(data);
      default:
        return EmptyModel();
    }
  }
}
