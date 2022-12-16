import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../components/app_photogallery.dart';
import '../../components/rounded_loader.dart';
import '../../models/api_resp.dart';
import '../../models/new_entry_resp.dart';
import 'package:dio/dio.dart';
import 'dart:io';
import 'dart:convert';
import 'package:qrscan/qrscan.dart' as scanner;
import '../../models/upload_resp.dart';
import '../../models/verification_resp.dart';
import '../../routes.dart';
import '../../services/image_upload_service.dart';
import '../../services/verification_services.dart';

class UserInfoViewController extends GetxController {
  NewEntryResp argumentData = Get.arguments;

  RxList<XFile> imagesList = (List<XFile>.of([])).obs;
  RxString idType = ''.obs;
  var serverReceiverPath = "https://www.developerlibs.com/upload";
  final String endPoint =
      'https://demo.dm.instio.co/holidayInn/document/images';

  void onInit() async {
    super.onInit();
    log("argumentData >>>>${argumentData.name}");
  }

  imageFromCamera() async {
    XFile? result = await ImagePicker()
        .pickImage(source: ImageSource.camera, imageQuality: 50);

    if (result != null) {
      imagesList.add(result);
    }
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

  idTypeOnchange(value) {
    // if (value != 'Aadhaar') {
    //   showMsg('currently unavailable', 'Warning !');
    //   return;
    // }
    idType.value = value.toString();
    argumentData.idType = value;
  }

  uploaImage(BuildContext buildContext) async {
    ApiResp respData =
        await ImageUploadServices.uploadProcess(imagesList[0], buildContext);
    if (respData.ok == false) {
      log("not Uploaded");
    } else {
      ImageUploadResp imageUploadCheck =
          ImageUploadResp.fromJson(respData.rdata);
      if (imageUploadCheck.code?.toString() == '200') {
        showMsg('Image Uploaded successfully', 'Success');
        multipartVerification(imageUploadCheck.data);
        log("Uploaded");
      } else {
        log("not Uploaded");
      }
      return true;
    }
  }

  removeImages() {
    imagesList.clear();
  }

  multipartVerification(String? data) async {
    showNetworkProcessingDialog();
    ApiResp respData =
        await VerificationServices.verificationMultipartImageProcess(argumentData,idType.value,data!);

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

  processBtn() {
    if (idType.value == "") {
      showMsg("Please select image", 'Required');
      return;
    }
    // Get.toNamed(Routes.verificationPage, arguments: argumentData);
  }

  void showMsg(String msg, String title, {leadingIcon, isSuccess = false}) {
    Get.snackbar(
      title,
      msg,
      icon: leadingIcon,
      snackPosition: SnackPosition.TOP,
      backgroundColor:
          isSuccess ? Colors.green : const Color.fromARGB(255, 177, 46, 46),
      colorText: Colors.white,
      borderRadius: 5,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
    );
  }
}
