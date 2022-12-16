import 'dart:io';

import 'package:dj_scanner/screens/user_info/user_controller.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../components/app_badge.dart';
import '../../components/app_buttons.dart';
import '../../my_theme.dart';
import '../../utils/asset_helper.dart';
import '../../utils/my_utils.dart';

class UserInfoView extends GetView<UserInfoViewController> {
  const UserInfoView({Key? key}) : super(key: key);

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
                  // child: Material(
                  //   color: Colors.white,
                  //   borderRadius: const BorderRadius.all(Radius.circular(9)),
                  //   elevation: 5,
                  //   child: Padding(
                  //     padding: const EdgeInsets.symmetric(horizontal: 10),
                  //     child: Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         const SizedBox(height: 10),
                  //         Padding(
                  //           padding: const EdgeInsets.symmetric(
                  //               horizontal: 10, vertical: 10),
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Expanded(
                  //                 child: Column(
                  //                   crossAxisAlignment:
                  //                       CrossAxisAlignment.start,
                  //                   children: [
                  //                     Text(
                  //                       'Name:',
                  //                       style: MyTheme.regularTextStyle(
                  //                           textSize: 12),
                  //                     ),
                  //                     Text(
                  //                       controller.argumentData.name ?? '_',
                  //                       style: MyTheme.regularTextStyle(
                  //                         textSize: 14,
                  //                       ),
                  //                     ),
                  //                     const SizedBox(
                  //                       height: 10,
                  //                     ),
                  //                     Text(
                  //                       'Mobile:',
                  //                       style: MyTheme.regularTextStyle(
                  //                           textSize: 12),
                  //                     ),
                  //                     Text(
                  //                       controller.argumentData.phone ?? '_',
                  //                       style: MyTheme.regularTextStyle(
                  //                           textSize: 14),
                  //                     ),
                  //                   ],
                  //                 ),
                  //               ),
                  //               SizedBox(
                  //                   height: Get.width * 0.2,
                  //                   child: SvgPicture.asset(
                  //                       AssetHelper.userInfoImage)),
                  //               const SizedBox(
                  //                 height: 10,
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //         Padding(
                  //           padding: const EdgeInsets.symmetric(
                  //               horizontal: 10, vertical: 10),
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Expanded(
                  //                 child: Column(
                  //                   crossAxisAlignment:
                  //                       CrossAxisAlignment.start,
                  //                   children: [
                  //                     Text(
                  //                       'Address:',
                  //                       style: MyTheme.regularTextStyle(
                  //                           textSize: 12),
                  //                     ),
                  //                     Text(
                  //                       '${controller.argumentData.addressLine1} ${controller.argumentData.addressLine2}',
                  //                       style: MyTheme.regularTextStyle(
                  //                           textSize: 14),
                  //                     ),
                  //                   ],
                  //                 ),
                  //               ),
                  //               const SizedBox(
                  //                 height: 10,
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //         const SizedBox(
                  //           height: 10,
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ),
                // const SizedBox(
                //   height: 20,
                // ),
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
                                horizontal: 10, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Scan ID',
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
                          Text(
                            'Upload the Identification document photo for the verification',
                            style: MyTheme.regularTextStyle(textSize: 12),
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
                            child: Obx(
                              (() => Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      controller.imagesList.isNotEmpty
                                          ? Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                IconButton(
                                                  onPressed: () {
                                                    controller.removeImages();
                                                  },
                                                  icon: const Icon(
                                                    Icons.delete_outline,
                                                    color: Colors.red,
                                                  ),
                                                )
                                              ],
                                            )
                                          : const SizedBox(),
                                      Expanded(child: Container()),
                                      controller.imagesList.isEmpty
                                          ? SizedBox(
                                              height: Get.width * 0.2,
                                              child: SvgPicture.asset(
                                                  AssetHelper.uploadImage),
                                            )
                                          : InkWell(
                                              onTap: () async {
                                                controller.openImage(
                                                    context, 0);
                                              },
                                              child: controller
                                                          .imagesList.length ==
                                                      1
                                                  ?
                                                  // ? Icon(
                                                  //     Icons.image,
                                                  //     color:
                                                  //         MyTheme.primaryColor1,
                                                  //     size: 80,
                                                  //   )

                                                  DottedBorder(
                                                      radius:
                                                          const Radius.circular(
                                                              0),
                                                      dashPattern: const [2, 2],
                                                      color: const Color(
                                                          0XFF707070),
                                                      strokeWidth: 1,
                                                      child: SizedBox(
                                                        width: 100,
                                                        height: 120,
                                                        child: Image.file(
                                                          File(controller
                                                              .imagesList[0]
                                                              .path),
                                                        ),
                                                      ),
                                                    )
                                                  : MAppBadge(
                                                      radius: 0,
                                                      color: Colors.red,
                                                      value: controller
                                                          .imagesList.length
                                                          .toString(),
                                                      top: 0,
                                                      right: 0,
                                                      child: DottedBorder(
                                                        radius: const Radius
                                                            .circular(0),
                                                        dashPattern: const [
                                                          2,
                                                          2
                                                        ],
                                                        color: const Color(
                                                            0XFF707070),
                                                        strokeWidth: 1,
                                                        child: SizedBox(
                                                          width: 100,
                                                          height: 120,
                                                          child: Image.file(
                                                            File(controller
                                                                .imagesList[0]
                                                                .path),
                                                          ),
                                                        ),
                                                      )),
                                            ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      MAButton(
                                        text: controller.imagesList.isEmpty
                                            ? 'Upload Photo'
                                            : 'Add Photo',
                                        padding: EdgeInsets.symmetric(
                                            horizontal: Get.width * 0.25),
                                        textSize: 12,
                                        buttonPress: () {
                                          controller.imageFromCamera();
                                        },
                                        height: 40,
                                      ),
                                      Expanded(child: Container())
                                    ],
                                  )),
                            ),
                          ),
                          // Center(
                          //   child: SizedBox(
                          //     height: Get.width * 0.2,
                          //     child: SvgPicture.asset(
                          //         AssetHelper.addMultipleImages),
                          //   ),
                          // ),
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
                  text: 'Submit',
                  buttonPress: () async {
                    controller. UploaImage(context);
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

