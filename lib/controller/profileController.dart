import 'package:get/get.dart';

class Profile extends GetxController {
  String picPath = "";
  var items = ['پنل 1', 'پنل 2', 'پنل 3', 'پنل 4', "+"].obs as String;
  var dropdownvalue = "پنل 1".obs;

  void setDropDownvalue(innerData) {
    this.dropdownvalue = innerData;
  }

  void setpicPath(innerData) {
    this.picPath = innerData;
    update();
  }
}
