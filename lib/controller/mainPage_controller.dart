

import 'package:get/get.dart';

class mainPage extends GetxController{
  var favCamera =[];
  var favScenario = [];
  var favShortCut = [];




  void setCamera(innerData){
    this.favCamera = innerData;
    update();
  }


  void setScenario(innerData){
    this.favScenario = innerData;
    update();
  }

  void setShortCut(innerData){
    this.favShortCut = innerData;
    update();
  }
}