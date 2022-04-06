import 'package:api/base/model/user.dart';
import 'package:api/core/model.dart';

class Post extends Model {
  int userId;
  String title, body;
  User? user;

  Post(
    this.userId,
    this.title,
    this.body,
    this.user,
  );

  factory Post.fromJson(Map<String, dynamic> data) {
    return Post(
      data['userId'],
      data['title'],
      data['body'],
      data['user'] != null
          //  && data['userId'] == data['user']['id']
          ? User.fromJson(data['user'])
          : null,
    );
  }
}
