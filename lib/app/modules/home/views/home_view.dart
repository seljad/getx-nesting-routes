import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_controller/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key, required this.data}) : super(key: key);
  final dynamic data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView in view ${data['view']}'),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Get.toNamed(Routes.PROFILE,
                      arguments: {"tag": data['tag'], "id": data['id']},
                      id: data['id']);
                },
                child: Text("Go to profile with tag ${data["tag"]}")),
          ],
        ),
      ),
    );
  }
}
