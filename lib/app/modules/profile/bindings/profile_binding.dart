import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileBinding extends Bindings {
  ProfileBinding({this.data});

  final dynamic data;

  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(() => ProfileController(), tag: data['tag']);
  }
}
