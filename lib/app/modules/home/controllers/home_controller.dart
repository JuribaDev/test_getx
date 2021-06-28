import 'dart:developer';

import 'package:get/get.dart';
import 'package:test_getx/app/modules/home/model/user.dart';
import 'package:test_getx/app/modules/home/services/user_service.dart';
import 'package:hive/hive.dart';

class HomeController extends GetxController {
  var users = List<UserModel>.empty(growable: true).obs;
  late final Box<UserModel> userBox;
  @override
  void onInit() async {
    super.onInit();
    // getUsers();
    users.value = await UserService.getUsers();
  }

  // getUsers() async {
  //   for (int i = 0; i < userBox.length; i++) {
  //     users.add(await userBox.v(i));
  //   }
  // }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
