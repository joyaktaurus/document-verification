import 'dart:developer';
import 'package:dj_scanner/components/rounded_loader.dart';
import 'package:dj_scanner/models/api_resp.dart';
import 'package:dj_scanner/models/verification_resp.dart';
import 'package:dj_scanner/utils/err_m.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import '../../components/app_photogallery.dart';
import '../../models/new_entry_resp.dart';
import '../../routes.dart';
import '../../services/verification_services.dart';

class ScanViewController extends GetxController {
  //final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  RxList<XFile> imagesList = (List<XFile>.of([])).obs;
  RxString idType = ''.obs;
  NewEntryResp argumentData = Get.arguments;
  @override
  void onInit() async {
    super.onInit();
    argumentData.idType = idType.value;
  }

  Future scan() async {
    await Permission.camera.request();
    String? barcode = await scanner.scan();
    if (barcode == null) {
      log('nothing return.');
    } else {
      log(barcode);
      argumentData.scanedData = barcode;
      // showMsg(barcode, 'Api Call');
      docVerification(barcode);
    }
  }

  removeImages() {
    imagesList.clear();
  }
  openImage(BuildContext context, final int index) async {
    await Get.to(
      GalleryPhotoViewWrapper(
        galleryItems: imagesList,
        backgroundDecoration: const BoxDecoration(
          color: Colors.black,
        ),
        initialIndex: index,
        imageType: 'network',
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  imageFromCamera() async {
    XFile? result = await ImagePicker()
        .pickImage(source: ImageSource.camera, imageQuality: 50);

    if (result != null) {
      imagesList.add(result);
    }
  }

  idTypeOnchange(value) {
    // if (value != 'Aadhaar') {
    //   showMsg('currently unavailable', 'Warning !');
    //   return;
    // }
    idType.value = value.toString();
    argumentData.idType = value;
  }

  processBtn() {
    if (idType.value == "") {
      showMsg("Please select ID type", 'Required');
      return;
    }
    // Get.toNamed(Routes.verificationPage, arguments: argumentData);
    scan();
  }

  docVerification(data) async {
    showNetworkProcessingDialog();
    ApiResp respData =
        await VerificationServices.verificationProcess(argumentData);

    if (respData.ok == false) {
    } else {
      VerificationResp verificationCheck =
          VerificationResp.fromJson(respData.rdata);
      argumentData.metaInfo = verificationCheck.data?.metaInfo;
      if (verificationCheck.data?.status.toString() == 'VERIFIED') {
        log("verified");
        argumentData.verificationStatus = true;
        Get.offNamed(Routes.verificationPage, arguments: argumentData);
      } else {
        log("not verified");
        argumentData.verificationStatus = false;
        // showMsg('Details do not match', 'Not Verified');
        Get.offNamed(Routes.verificationPage, arguments: argumentData);
      }
      return true;
    }
  }
}
