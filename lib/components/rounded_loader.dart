import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../my_theme.dart';

showNetworkProcessingDialog([loaderText]) {
  Get.defaultDialog(
    barrierDismissible: true,
    title: '',
    content: WillPopScope(
      onWillPop: () async => false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                top: 10.0, left: 10.0, right: 10.0, bottom: 10.0),
            child: Text(loaderText ?? "Please wait",
                textAlign: TextAlign.center,
                style: MyTheme.regularTextStyle(textSize: 15)),
          ),
          const CircularProgressIndicator()
        ],
      ),
    ),
  );
}
