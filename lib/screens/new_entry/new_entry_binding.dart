import 'package:dj_scanner/screens/new_entry/new_entry_controller.dart';
import 'package:get/get.dart';

class NewEntryViewBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewEntryViewController>(
      () => NewEntryViewController(),
    );
  }
}
