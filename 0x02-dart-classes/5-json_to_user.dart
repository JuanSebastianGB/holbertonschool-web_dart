class User {
  int? id;
  String? name;
  int? age;
  double? height;

  User({name, age, height, id}) {
    this.id = id;
    this.name = name;
    this.age = age;
    this.height = height;
  }

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
      height: userJson["height"]);

  String toString() =>
      'User(id : $id ,name: $name, age: $age, height: $height)';
}
