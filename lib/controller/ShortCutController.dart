import 'package:get/get.dart';



class ShortCut extends GetxController{
  var categury = [];
  var BtnDatas = [];



  void setCategury(innerData){
    this.categury = innerData;
    update();
  }

  void setbtn(innerData){
    this.BtnDatas = innerData;
    update();
  }
}