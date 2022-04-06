import 'package:api/core/model.dart';

class User extends Model {
  
  int id;
  String name, email;

  User(this.id, this.name, this.email);

  factory User.fromJson(Map<String, dynamic> data) {
    return User(
      data['id'],
      data['name'],
      data['email'],
    );
  }
}
