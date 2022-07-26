import 'package:get/get.dart';

class doorbell extends GetxController {
  String ScreenShotPath = "";
  String CaneraPath = "";

  void setScreenShotPath(innerData) {
    this.ScreenShotPath = innerData;
    update();
  }

  void setCaneraPath(innerData) {
    this.CaneraPath = innerData;
    update();
  }
}
