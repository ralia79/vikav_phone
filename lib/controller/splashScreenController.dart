import 'package:get/get.dart';

class SplashController extends GetxController {
  var nextPage;
  var prevPage;

  void setNxt(innerData) {
    this.nextPage = innerData;

    update();
  }

  void setprv(innerData) {
    this.prevPage = innerData;

    update();
  }
}
