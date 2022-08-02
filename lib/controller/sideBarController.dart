import 'package:get/get.dart';

class sideBarController extends GetxController {
  RxList<bool> IsActive = [
    false,
    false,
    false,
    false,
    false,
    true,
    false,
    false,
    false,
    false
  ].obs;

  void changeIsActive(num) {
    for (int i = 0; i < IsActive.length; i++) {
      IsActive[i] = false;
    }
    IsActive[num] = true;
  }
}
