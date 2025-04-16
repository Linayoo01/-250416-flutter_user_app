import 'dart:convert';
import '../model/user.dart';

class UserRepository {
  Future<User> getUser() async {
    await Future.delayed(const Duration(seconds: 1));

    const response = '''
    {
      "name": "이지원",
      "age": 20
    }
    ''';

    final map = jsonDecode(response);
    return User.fromJson(map);
  }
}
