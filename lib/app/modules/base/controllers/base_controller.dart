import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_controller/app/modules/base/views/first_view_wrapper.dart';
import 'package:getx_controller/app/modules/base/views/second_view_wrapper.dart';

class BaseController extends GetxController {
  RxInt selectedIndex = 0.obs;
  late List<Widget> widgetOptions;

  BaseController() {
    widgetOptions = <Widget>[
      const FirstViewWrapper(),
      const SecondViewWrapper(),
    ];
  }

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }
}
