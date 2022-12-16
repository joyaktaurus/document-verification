import 'dart:developer';
import 'package:get/get.dart';

import '../../models/new_entry_resp.dart';

class VerificationViewController extends GetxController {
  NewEntryResp argumentData = Get.arguments;
  //final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void onInit() async {
    super.onInit();
    log("argumentData >>>>$argumentData");
  }
}
