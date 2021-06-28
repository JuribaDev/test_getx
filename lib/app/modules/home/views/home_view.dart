import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.builder(
            itemCount: controller.users.length,
            itemBuilder: (context, i) {
              return ListTile(
                title: Text(controller.users[i].name),
              );
            }),
      ),
    );
  }
}
