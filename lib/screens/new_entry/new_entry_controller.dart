import 'package:dj_scanner/utils/err_m.dart';
import 'package:dj_scanner/utils/my_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../models/new_entry_resp.dart';
import '../../routes.dart';

class NewEntryViewController extends GetxController {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> nameformKey = GlobalKey<FormState>();
  GlobalKey<FormState> phoneformKey = GlobalKey<FormState>();
  final TextEditingController nameCtrl = TextEditingController(text: '');
  final TextEditingController addressLine1Ctrl =
      TextEditingController(text: '');
  final TextEditingController addressLine2Ctrl =
      TextEditingController(text: '');
  final TextEditingController phoneCtrl = TextEditingController(text: '');
  final FocusNode nameCtrlfocusNode = FocusNode();
  final FocusNode addressLine1CtrlfocusNode = FocusNode();
  final FocusNode addressLine2CtrlfocusNode = FocusNode();
  final FocusNode phoneCtrlfocusNode = FocusNode();
  DateTime preBackpress = DateTime.now();

  openDrawer() {
    if (scaffoldKey.currentState!.isDrawerOpen) {
      scaffoldKey.currentState!.openEndDrawer();
    } else {
      scaffoldKey.currentState!.openDrawer();
    }
  }

  @override
  void onInit() async {
    super.onInit();
    nameCtrl.text = '';
    phoneCtrl.text = '';
  }

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
    Get.toNamed(Routes.scanPage,
        arguments: NewEntryResp(
            name: nameCtrl.text,
            phone: phoneCtrl.text,
            addressLine1: addressLine1Ctrl.text,
            addressLine2: addressLine2Ctrl.text));
  }

  imgBtn() async {
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

  //Future<bool>
  onWillPop() {
    final timegap = DateTime.now().difference(preBackpress);
    final cantExit = timegap >= const Duration(seconds: 2);
    preBackpress = DateTime.now();
    if (cantExit) {
      Get.snackbar('Exit', 'Press Back button again to Exit',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.black,
          colorText: Colors.white);
      return false;
    } else {
      SystemNavigator.pop();
      return true;
    }
  }
}
