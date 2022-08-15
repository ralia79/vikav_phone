import 'package:get/get.dart';

class Profile extends GetxController {
  String picPath = "";
  var items = ['پنل 1', 'پنل 2', 'پنل 3', 'پنل 4', "+"].obs;
  final dropdownvalue = "پنل 1".obs;

  void setDropDownvalue(innerData) {
    this.dropdownvalue.value = innerData;
    print(this.dropdownvalue);
  }

  void setpicPath(innerData) {
    this.picPath = innerData;
    update();
  }
}
