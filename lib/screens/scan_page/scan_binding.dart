import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'scan_controller.dart';

class ScanViewBindings extends Bindings {
  late BuildContext context;
  @override
  void dependencies() {
    Get.lazyPut<ScanViewController>(
      () => ScanViewController(),
    );
  }
}
