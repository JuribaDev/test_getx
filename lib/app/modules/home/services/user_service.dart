import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:test_getx/app/exception/failure.dart';
import 'package:test_getx/app/modules/home/model/user.dart';
import 'package:test_getx/app/utils/api_url.dart';

class UserService {
  static Future<List<UserModel>> getUsers() async {
    var url = Uri.parse(baseUrl + 'users');
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        List<UserModel> users = [];
        for (var user in body) {
          users.add(UserModel.fromJson(user));
        }
        return users;
      } else {
        throw ApiFailure(message: 'some thing wrong');
      }
    } on SocketException {
      throw ApiFailure(message: 'no internet');
    } on FormatException {
      throw ApiFailure(message: 'bad response format');
    } on HttpException {
      throw ApiFailure(message: 'could not find the user');
    }
  }
}
