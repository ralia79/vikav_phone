import 'package:get/get.dart';

class Profile extends GetxController {
  String picPath = "";


  void setpicPath(innerData) {
    this.picPath = innerData;
    update();
  }
}
