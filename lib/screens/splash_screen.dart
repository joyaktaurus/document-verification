import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../app.dart';
import '../../my_theme.dart';
import '../routes.dart';
import '../utils/err_m.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      errM(() => checkAlreadyLogged());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            '${App.appTitle} ${App.appVersionName}',
            style: MyTheme.regularTextStyle(
                color: MyTheme.primaryColor2, textSize: 34),
          ),
        ),
      ),
    );
  }

  Future<void> checkAlreadyLogged() async {
    Future.delayed(
      const Duration(milliseconds: 1400),
      () async {
        Get.offNamed(Routes.newEntryPage);
      },
    );
  }
}
