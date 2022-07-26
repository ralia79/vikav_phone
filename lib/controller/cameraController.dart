import 'package:get/get.dart';


class camera extends GetxController{
  var cameras = [];



  void setCameras(innerData){
    this.cameras = innerData;
    update();
  }
}