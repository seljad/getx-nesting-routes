import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_controller/app/routes/app_pages.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key, required this.data}) : super(key: key);
  final dynamic data;

  @override
  ProfileController get controller {
    return Get.find(tag: data["tag"]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProfileView'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
          child: TextButton(
        child: Text("Create notification page with equal tag on another view"),
        onPressed: () {
          Get.toNamed(Routes.NOTIFICATION,
              id: data["id"], arguments: {"tag": "C"});
        },
      )),
      floatingActionButton: FloatingActionButton(
          onPressed: controller.increment, child: Icon(Icons.add)),
    );
  }
}
