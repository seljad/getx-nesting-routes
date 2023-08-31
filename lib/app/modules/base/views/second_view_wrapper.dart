import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_controller/app/modules/home/views/home_view.dart';
import 'package:getx_controller/app/modules/notification/bindings/notification_binding.dart';
import 'package:getx_controller/app/modules/notification/views/notification_view.dart';

import '../../../routes/app_pages.dart';
import '../../home/bindings/home_binding.dart';
import '../../profile/bindings/profile_binding.dart';
import '../../profile/views/profile_view.dart';

class SecondViewWrapper extends StatelessWidget {
  const SecondViewWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(2),
      initialRoute: Routes.HOME,
      onGenerateRoute: (routeSettings) {
        dynamic arguments = routeSettings.arguments;
        if (routeSettings.name == Routes.HOME) {
          return GetPageRoute(
              routeName: Routes.HOME,
              title: "Home Page",
              page: () => const HomeView(
                    data: {"view": "2", "tag": "B", "id": 2},
                  ),
              binding: HomeBinding());
        } else if (routeSettings.name == Routes.NOTIFICATION) {
          return GetPageRoute(
              routeName: Routes.NOTIFICATION,
              page: () => NotificationView(data: arguments),
              binding: NotificationBinding(data: arguments));
        } else if (routeSettings.name == Routes.PROFILE) {
          return GetPageRoute(
              routeName: Routes.PROFILE,
              title: "Profile Page",
              page: () => ProfileView(data: arguments),
              binding: ProfileBinding(data: arguments));
        }
        return null;
      },
    );
  }
}
