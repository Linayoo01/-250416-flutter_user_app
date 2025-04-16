class User {
  final String name;
  final int age;

  User({
    required this.name,
    required this.age,
  });

  factory User.fromJson(Map<String, dynamic> map) {
    return User(
      name: map['name'],
      age: map['age'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "age": age,
    };
  }
}
