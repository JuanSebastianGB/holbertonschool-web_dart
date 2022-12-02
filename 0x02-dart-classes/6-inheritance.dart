import './6-password.dart';

class User extends Password {
  int id;
  String name;
  int age;
  double height;
  String user_password;

  User(
      {required this.name,
      required this.age,
      required this.height,
      required this.id,
      required this.user_password})
      : super(password: user_password);

  Map toJson() => {
        'id': this.id,
        'name': this.name,
        'age': this.age,
        'height': this.height
      };

  static User fromJson(Map<dynamic, dynamic> userJson) => User(
      id: userJson["id"],
      name: userJson["name"],
      age: userJson["age"],
      height: userJson["height"],
      user_password: userJson["user_password"]);

  String toString() =>
      'User(id : $id ,name: $name, age: $age, height: $height, Password: ${this.isValid(user_password)})';
}