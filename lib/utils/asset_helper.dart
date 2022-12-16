import '../presets/api_paths.dart';

abstract class AssetHelper {
  static String images(String imageName) {
    return 'assets/images/$imageName';
  }

  static String icons(String imageName) {
    return 'assets/icons/$imageName';
  }

  static get inventoryIcon => icons("");
  static get customersIcon => icons("");
  //---------------------------------------------

  static get appImageUrl => ApiPaths.baseUrl + ApiPaths.imagePath;
  //---------------------------------------------
  static get homeImage => images("home_icon.svg");
  static get newEntryImage => images("new_entry.svg");
  static get uploadImage => images("upload_photo.svg");
  static get addMultipleImages => images("add_mutiple_images.svg");
  static get userInfoImage => images("user_info.svg");
  static get scanQRImage => images("scan_qr.svg");
  static get validImage => images("valid.svg");
  static get notMatchImage => images("not_match.svg");
  static get invalidDocImage => images("invalid.svg");
  static get unableQrImage => images("unable.svg");
}
