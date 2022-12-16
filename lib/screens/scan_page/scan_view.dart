import 'package:dj_scanner/screens/scan_page/scan_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../components/app_buttons.dart';
import '../../my_theme.dart';
import '../../utils/asset_helper.dart';
import '../../utils/my_utils.dart';

class ScanView extends GetView<ScanViewController> {
  const ScanView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        MyUtils.hideKeyboard();
      },
      child: Scaffold(
        //key: controller.scaffoldKey,
        body: SafeArea(
          child: Container(
            //SingleChildScrollView
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Material(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(9)),
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Scan QR',
                                    style: MyTheme.regularTextStyle(
                                        textSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: MyTheme.primaryColor1,
                            thickness: 2,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 0),
                            child: Text(
                              'Select the type of ID proof you are going to scan',
                              style: MyTheme.regularTextStyle(textSize: 12),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Obx((() => Column(
                                children: [
                                  RadioListTile(
                                    title: const Text("Driving License"),
                                    value: "DRIVING_LICENSE",
                                    groupValue: controller.idType.value,
                                    onChanged: (value) =>
                                        controller.idTypeOnchange(value),
                                  ),
                                  // RadioListTile(
                                  //     title: const Text("Voters ID"),
                                  //     value: "Voters ID",
                                  //     groupValue: controller.idType.value,
                                  //     onChanged: (value) =>
                                  //         controller.idTypeOnchange(value)),
                                  RadioListTile(
                                    title: const Text("Aadhaar"),
                                    value: "AADHAAR",
                                    groupValue: controller.idType.value,
                                    onChanged: (value) =>
                                        controller.idTypeOnchange(value),
                                  ),
                                  RadioListTile(
                                    title: const Text("Voter ID"),
                                    value: "VOTER ID",
                                    groupValue: controller.idType.value,
                                    onChanged: (value) =>
                                        controller.idTypeOnchange(value),
                                  )
                                ],
                              ))),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0XFF707070),
                                  style: BorderStyle.solid,
                                  width: 1.0,
                                ),
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(13.0),
                              ),
                              width: Get.width,
                              height: Get.height * .3,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () => controller.processBtn(),
                                    child: SizedBox(
                                        height: Get.width * 0.5,
                                        child: SvgPicture.asset(
                                          AssetHelper.scanQRImage,
                                          width: Get.width * 0.2,
                                        )),
                                  ),
                                  // MAButton(
                                  //   text: 'Scan QR',
                                  //   padding: EdgeInsets.symmetric(
                                  //       horizontal: Get.width * 0.25),
                                  //   textSize: 12,
                                  //   buttonPress: () {
                                  //     controller.scan();
                                  //   },
                                  //   height: 40,
                                  // )
                                ],
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                MAButton(
                  text: 'Scan QR',
                  // isEnabled: false,
                  buttonPress: () {
                    controller.processBtn();
                  },
                  padding: const EdgeInsets.all(0),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
