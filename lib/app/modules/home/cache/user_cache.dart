import 'dart:developer';
import 'dart:io';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:test_getx/app/exception/failure.dart';
import 'package:test_getx/app/modules/home/model/user.dart';
import 'package:test_getx/app/modules/home/services/user_service.dart';

const String usersApiCache = 'users_api';

class UserApiCache {
  var users = List<UserModel>.empty(growable: true);
  late Box box;

  Future openBox() async {
    var dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    box = await Hive.openBox('users');
    return;
  }

  Future putUsers(List<UserModel> users) async {
    await box.clear();
    Hive.box('users').addAll(users);
  }

  getUsersAndCacheThem() async {
    await openBox();
    try {
      users = await UserService.getUsers();
      putUsers(users);
    } on SocketException {
      throw CacheFailure(message: 'no internet');
    }
  }
}
