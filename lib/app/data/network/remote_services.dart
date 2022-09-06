import 'package:dio/dio.dart';

import '../models/users_model.dart';

class RemoteServices {
  static var dio = Dio();
  // we will use dio for network calling
  static const url = 'https://reqres.in/api/users';

  static Future<List<Users>> fetchUsers() async {
    var response = await dio.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> data = response.data;
      print(data);
      return data.map((json) => Users.fromJson(json)).toList();
    } else {
      throw Exception("Failed to load Data");
    }
  }
  // our api fetching is done, let;s work on other part
}
