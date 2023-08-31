import 'package:get/get.dart';

import '../controllers/notification_controller.dart';

class NotificationBinding extends Bindings {
  NotificationBinding({this.data});

  final dynamic data;

  @override
  void dependencies() {
    Get.lazyPut<NotificationController>(() => NotificationController(),
        tag: data['tag']);
  }
}
