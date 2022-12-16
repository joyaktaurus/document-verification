import 'dart:developer';

import 'package:dj_scanner/components/app_buttons.dart';
import 'package:dj_scanner/utils/asset_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../components/app_grid.dart';
import '../../components/app_title_seeall.dart';
import '../../routes.dart';
import '../../utils/my_utils.dart';
import 'home_controller.dart';

class HomeView extends GetView<HomeViewController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        MyUtils.hideKeyboard();
      },
      child: Scaffold(
        key: controller.scaffoldKey,
        body: SafeArea(
            child: Center(
          // child: MAButton(
          //   text: ' QR Scan',
          //   buttonPress: () {
          //     log('button clicked');
          //     controller.scan();
          //   },
          // ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  height: Get.height * 0.25,
                  child: SvgPicture.asset(AssetHelper.homeImage)),
              // MAButton(
              //   text: 'New Entry',
              //   buttonPress: () {
              //     log('button clicked');
              //     Get.toNamed(Routes.scanPage);
              //   },
              // ),

              MAButton(
                text: 'Next',
                buttonPress: () => controller.nextBtn(),
                padding: const EdgeInsets.all(0),
              ),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: MATitleWithSeeAllButton(
                    title: 'Todays Summary',
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 0)),
              ),
              SizedBox(height: Get.height * 0.5, child: const MAGridView())
            ],
          ),
        )),
      ),
    );
  }
}
