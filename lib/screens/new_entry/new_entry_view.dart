import 'package:dj_scanner/components/app_buttons.dart';
import 'package:dj_scanner/screens/new_entry/new_entry_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../components/app_textfield.dart';
import '../../my_theme.dart';
import '../../utils/asset_helper.dart';
import '../../utils/my_utils.dart';

class NewEntryView extends GetView<NewEntryViewController> {
  const NewEntryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        MyUtils.hideKeyboard();
      },
      child: Scaffold(
        //key: controller.scaffoldKey,
        body: WillPopScope(
          onWillPop: () => controller.onWillPop(),
          child: SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 150),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                      height: Get.height * 0.25,
                      child: SvgPicture.asset(AssetHelper.newEntryImage)),

                  SizedBox(
                    height: Get.height * .03,
                  ),
                  MAButton(
                    text: 'Scan QR',
                    buttonPress: () => controller.nextBtn(),
                    padding: const EdgeInsets.all(0),
                  ),
                  SizedBox(
                    height: Get.height * .03,
                  ),
                  MAButton(
                    text: 'Upload Image',
                    buttonPress: () => controller.imgBtn(),
                    padding: const EdgeInsets.all(0),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
