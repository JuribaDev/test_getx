import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:test_getx/app/modules/home/cache/user_cache.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  var path = Directory.current.path;
  Hive.init(path);
  // await Hive.openBox(usersApiBox);

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
