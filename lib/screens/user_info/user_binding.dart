import 'package:dj_scanner/screens/user_info/user_controller.dart';
import 'package:get/get.dart';

class UserInfoViewBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserInfoViewController>(
      () => UserInfoViewController(),
    );
  }
}
