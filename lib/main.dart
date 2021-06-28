import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:test_getx/app/modules/home/model/address.dart';
import 'package:test_getx/app/modules/home/model/company.dart';
import 'package:test_getx/app/modules/home/model/geo.dart';
import 'package:test_getx/app/modules/home/model/user.dart';
import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDirectory =
      await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  // Hive.initFlutter();
  Hive.registerAdapter<UserModel>(UserModelAdapter());
  Hive.registerAdapter<AddressModel>(AddressModelAdapter());
  Hive.registerAdapter<GeoModel>(GeoModelAdapter());
  Hive.registerAdapter<CompanyModel>(CompanyModelAdapter());
  await Hive.openBox<UserModel>('users');

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
