import 'package:get/get.dart';

class camera extends GetxController {
  var cameras = [
    ["assets/images/person2.jpg", "دوربین شماره ۱"],
    ["assets/images/camera1.png", "دوربین شماره ۲"],
    ["assets/images/camera2.jpg", "دوربین شماره ۳"],
    ["assets/images/camera3.png", "دوربین شماره ۴"],
    ["assets/images/camera4.jpg", "دوربین شماره ۵"]
  ].obs;

  var cameraActive = "".obs;
  var cameraActiveDetail = "".obs;

  void setCameraActiveDetail(newData) {
    this.cameraActiveDetail.value = newData;
  }

  void setCameraActive(newData) {
    print(newData);

    this.cameraActive.value = newData;
    print(this.cameraActive);
  }

  void setCameras(innerData) {
    this.cameras = innerData;
    update();
  }
}
