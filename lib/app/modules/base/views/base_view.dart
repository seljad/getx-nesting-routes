import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/base_controller.dart';

class BaseView extends GetView<BaseController> {
  const BaseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => IndexedStack(
              index: controller.selectedIndex.value,
              children: controller.widgetOptions,
            )),
        bottomNavigationBar: Obx(() => BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.ac_unit), label: "View 1"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.ac_unit), label: "View 2"),
              ],
              currentIndex: controller.selectedIndex.value,
              onTap: controller.onItemTapped,
            )));
  }
}
