import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/new_entry_resp.dart';
import '../../routes.dart';

class HomeViewController extends GetxController {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController nameCtrl = TextEditingController(text: '');
  final TextEditingController addressLine1Ctrl =
  TextEditingController(text: '');
  final TextEditingController addressLine2Ctrl =
  TextEditingController(text: '');
  final TextEditingController phoneCtrl = TextEditingController(text: '');

  nextBtn() async {
    // if (nameformKey.currentState?.validate() == false ||
    //     phoneformKey.currentState?.validate() == false) {
    //   showMsg('Required All Mandatory Fields', 'Required');
    //   return;
    // } else if (!nameCtrl.text.isValidName()) {
    //   nameCtrlfocusNode.requestFocus();
    //   showMsg('Please provide a valid Name', 'Invalid');
    //   return;
    // } else if (!phoneCtrl.text.isValidMobileNumber()) {
    //   phoneCtrlfocusNode.requestFocus();
    //   showMsg('Please provide a valid Phone Number', 'Invalid');
    //   return;
    // }
    Get.toNamed(Routes.userInfoPage,
        arguments: NewEntryResp(
            name: nameCtrl.text,
            phone: phoneCtrl.text,
            addressLine1: addressLine1Ctrl.text,
            addressLine2: addressLine2Ctrl.text));
  }
  openDrawer() {
    if (scaffoldKey.currentState!.isDrawerOpen) {
      scaffoldKey.currentState!.openEndDrawer();
    } else {
      scaffoldKey.currentState!.openDrawer();
    }
  }
}
