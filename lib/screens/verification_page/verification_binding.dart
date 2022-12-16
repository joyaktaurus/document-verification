import 'package:dj_scanner/screens/verification_page/verification_controller.dart';
import 'package:get/get.dart';

class VerificationViewBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerificationViewController>(
      () => VerificationViewController(),
    );
  }
}
