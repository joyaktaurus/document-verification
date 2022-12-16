import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app.dart';
import 'my_theme.dart';
import 'routes.dart';

void main() async {
  await GetStorage.init();

  runApp(
    GetMaterialApp(
      title: App.appTitle,
      theme: ThemeData(
        primarySwatch: MyTheme.primaryColor1,
      ),
      initialRoute: Routes.splash,
      getPages: Routes.routes,
    ),
  );
}
