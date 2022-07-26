import 'package:get/get.dart';


class temp extends GetxController{
  var SectionsData = [];
  var tempsData = [];


  void setSectionsData(innerData){
    this.SectionsData = innerData;
    update();
  }
  void settempsData(innerData){
    this.tempsData = innerData;
    update();
  }
}