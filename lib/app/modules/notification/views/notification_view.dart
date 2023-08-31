import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({Key? key, required this.data}) : super(key: key);
  final dynamic data;

  @override
  NotificationController get controller {
    return Get.find(tag: data["tag"]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NotificationView'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Obx(() => Text("${controller.count.value}")),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        child: Icon(Icons.add),
      ),
    );
  }
}
