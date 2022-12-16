import 'package:dj_scanner/routes.dart';
import 'package:dj_scanner/screens/verification_page/verification_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../components/app_buttons.dart';
import '../../components/app_dialog.dart';
import '../../my_theme.dart';
import '../../utils/asset_helper.dart';
import '../../utils/my_utils.dart';

class VerificationView extends GetView<VerificationViewController> {
  const VerificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        MyUtils.hideKeyboard();
      },
      child: Scaffold(
        //key: controller.scaffoldKey,
        body: WillPopScope(
          onWillPop: () async => false,
          child: SafeArea(
            child:

                // controller.argumentData.verificationStatus == false
                //     ? Container(
                //         height: Get.height,
                //         width: Get.width,
                //         //SingleChildScrollView
                //         padding: const EdgeInsets.symmetric(
                //             horizontal: 10, vertical: 10),
                //         // child: Center(
                //         child: Column(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           children: [
                //             const Expanded(
                //               child: SizedBox(
                //                 height: 20,
                //               ),
                //             ),
                //             SizedBox(
                //                 height: Get.width * 0.3,
                //                 child: SvgPicture.asset(
                //                   AssetHelper.invalidDocImage,
                //                   width: Get.width * 0.3,
                //                 )),
                //             const SizedBox(
                //               height: 20,
                //             ),
                //             Text('Details do not match',
                //                 style: MyTheme.regularTextStyle(
                //                     textSize: 16, fontWeight: FontWeight.bold)),
                //             const Expanded(
                //               child: SizedBox(
                //                 height: 20,
                //               ),
                //             ),
                //             MAButton(
                //               text: 'Exit',
                //               buttonPress: () {
                //                 Get.offAllNamed(Routes.newEntryPage);
                //               },
                //               padding: const EdgeInsets.all(0),
                //             )
                //           ],
                //         ),
                //       )
                //     :

                Container(
              //SingleChildScrollView
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Padding(
                  //   padding: const EdgeInsets.all(0.0),
                  //   child: Material(
                  //     color: Colors.white,
                  //     borderRadius: const BorderRadius.all(Radius.circular(9)),
                  //     elevation: 5,
                  //     child: Padding(
                  //       padding: const EdgeInsets.symmetric(horizontal: 10),
                  //       child: Column(
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           const SizedBox(height: 10),
                  //           Padding(
                  //             padding: const EdgeInsets.symmetric(
                  //                 horizontal: 10, vertical: 10),
                  //             child: Row(
                  //               mainAxisAlignment:
                  //                   MainAxisAlignment.spaceBetween,
                  //               children: [
                  //                 Expanded(
                  //                   child: Column(
                  //                     crossAxisAlignment:
                  //                         CrossAxisAlignment.start,
                  //                     children: [
                  //                       Text(
                  //                         'Name:',
                  //                         style: MyTheme.regularTextStyle(
                  //                             textSize: 12),
                  //                       ),
                  //                       const SizedBox(
                  //                         height: 10,
                  //                       ),
                  //                       Text(
                  //                         controller.argumentData.name ?? '',
                  //                         style: MyTheme.regularTextStyle(
                  //                             textSize: 14),
                  //                       ),
                  //                       const SizedBox(
                  //                         height: 10,
                  //                       ),
                  //                       Text(
                  //                         'Mobile:',
                  //                         style: MyTheme.regularTextStyle(
                  //                             textSize: 12),
                  //                       ),
                  //                       const SizedBox(
                  //                         height: 10,
                  //                       ),
                  //                       Text(
                  //                         controller.argumentData.phone ?? '',
                  //                         style: MyTheme.regularTextStyle(
                  //                             textSize: 14),
                  //                       ),
                  //                     ],
                  //                   ),
                  //                 ),
                  //                 SizedBox(
                  //                     height: Get.width * 0.2,
                  //                     child: SvgPicture.asset(
                  //                         AssetHelper.validImage)),
                  //                 const SizedBox(
                  //                   height: 10,
                  //                 ),
                  //               ],
                  //             ),
                  //           ),
                  //           Padding(
                  //             padding: const EdgeInsets.symmetric(
                  //                 horizontal: 10, vertical: 10),
                  //             child: Row(
                  //               mainAxisAlignment:
                  //                   MainAxisAlignment.spaceBetween,
                  //               children: [
                  //                 Expanded(
                  //                   child: Column(
                  //                     crossAxisAlignment:
                  //                         CrossAxisAlignment.start,
                  //                     children: [
                  //                       Text(
                  //                         'Address:',
                  //                         style: MyTheme.regularTextStyle(
                  //                             textSize: 12),
                  //                       ),
                  //                       const SizedBox(
                  //                         height: 10,
                  //                       ),
                  //                       Text(
                  //                         '${controller.argumentData.addressLine1} ${controller.argumentData.addressLine2}',
                  //                         style: MyTheme.regularTextStyle(
                  //                             textSize: 14),
                  //                       ),
                  //                     ],
                  //                   ),
                  //                 ),
                  //                 const SizedBox(
                  //                   height: 10,
                  //                 ),
                  //               ],
                  //             ),
                  //           ),
                  //           const SizedBox(
                  //             height: 10,
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(
                    height: 20,
                  ),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Document ID',
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
                                'scanned Data from the document',
                                style: MyTheme.regularTextStyle(textSize: 12),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            // Obx(
                            //   () =>
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Doc Type:',
                                          style: MyTheme.regularTextStyle(
                                              textSize: 12),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          controller.argumentData.idType ?? '',
                                          style: MyTheme.regularTextStyle(
                                              textSize: 17),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'Name:',
                                          style: MyTheme.regularTextStyle(
                                              textSize: 12),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          controller.argumentData.metaInfo
                                                  ?.name ??
                                              '',
                                          style: MyTheme.regularTextStyle(
                                              textSize: 17),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Uid:',
                                          style: MyTheme.regularTextStyle(
                                              textSize: 12),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          controller
                                                  .argumentData.metaInfo?.uid ??
                                              '',
                                          style: MyTheme.regularTextStyle(
                                              textSize: 17),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Gender:',
                                                  style:
                                                      MyTheme.regularTextStyle(
                                                          textSize: 12),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  controller.argumentData
                                                          .metaInfo?.gender ??
                                                      '',
                                                  style:
                                                      MyTheme.regularTextStyle(
                                                          textSize: 17),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'DOB:',
                                                  style:
                                                      MyTheme.regularTextStyle(
                                                          textSize: 12),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  controller.argumentData
                                                          .metaInfo?.dob ??
                                                      '',
                                                  style:
                                                      MyTheme.regularTextStyle(
                                                          textSize: 17),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Address:',
                                          style: MyTheme.regularTextStyle(
                                              textSize: 9),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          '${controller.argumentData.metaInfo?.house},${controller.argumentData.metaInfo?.street},${controller.argumentData.metaInfo?.lm}, ${controller.argumentData.metaInfo?.loc},${controller.argumentData.metaInfo?.po},${controller.argumentData.metaInfo?.dist},${controller.argumentData.metaInfo?.vtc},${controller.argumentData.metaInfo?.state},${controller.argumentData.metaInfo?.pc}',
                                          style: MyTheme.regularTextStyle(
                                              textSize: 17),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
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
                    text: 'Verified',
                    buttonPress: () {
                      //verificationDialogs(context);

                      Get.offAllNamed(Routes.newEntryPage);
                    },
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

verificationDialogs(context) {
  return MADialogues.dialog(
    context,
    onDismiss: () {},
    widgetContent: MADialogueBackground(
      dialogue: MADialogues().commonDialog(
        heading: '',
        dialogContent: Column(
          children: [
            SizedBox(
                height: Get.width * 0.3,
                child: SvgPicture.asset(
                  AssetHelper.unableQrImage,
                  width: Get.width * 0.3,
                )),
            const SizedBox(
              height: 20,
            ),
            Text('Details do not match',
                style: MyTheme.regularTextStyle(
                    textSize: 16, fontWeight: FontWeight.bold))
          ],
        ),
      ),
    ),
  );
}
