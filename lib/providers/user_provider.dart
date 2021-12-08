import 'package:app_doctor_consulting/models/user_model.dart';
import 'package:dio/dio.dart';

class UserProvider {
  Future<List<UserModel>> getUsers() async {
    var dio = Dio();
    final response = await dio.get(
      'https://reqres.in/api/users',
      queryParameters: {
        "page": 1,
      },
    );

    return (response.data["data"] as List)
        .map((json) => UserModel.fromJson(json))
        .toList();
  }
}
