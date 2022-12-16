import 'package:dj_scanner/screens/new_entry/new_entry_view.dart';
import 'package:dj_scanner/screens/user_info/user_binding.dart';
import 'package:dj_scanner/screens/user_info/user_view.dart';
import 'package:dj_scanner/screens/verification_page/verification_binding.dart';
import 'package:dj_scanner/screens/verification_page/verification_view.dart';
import 'package:get/get.dart';
import 'screens/new_entry/new_entry_binding.dart';
import 'screens/scan_page/scan_binding.dart';
import 'screens/scan_page/scan_view.dart';
import 'screens/splash_screen.dart';

class Routes {
  static const splash = '/';
  // static const homePage = '/homepage';
  static const newEntryPage = '/newentrypage';
  static const scanPage = '/scanpage';
  static const userInfoPage = '/userinfopage';
  static const verificationPage = '/verificationpage';

  static final routes = [
    GetPage(
      name: splash,
      page: () => const SplashScreen(),
    ),
    // GetPage(
    //   binding: HomeViewBindings(),
    //   name: homePage,
    //   page: () => const HomeView(),
    // ),
    GetPage(
      binding: NewEntryViewBindings(),
      name: newEntryPage,
      page: () => const NewEntryView(),
    ),
    GetPage(
      binding: UserInfoViewBindings(),
      name: userInfoPage,
      page: () => const UserInfoView(),
    ),
    GetPage(
      binding: ScanViewBindings(),
      name: scanPage,
      page: () => const ScanView(),
    ),
    GetPage(
      binding: VerificationViewBindings(),
      name: verificationPage,
      page: () => const VerificationView(),
    ),
  ];
}
