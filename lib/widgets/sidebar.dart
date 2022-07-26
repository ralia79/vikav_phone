import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jojo/controller/homeScreenController.dart';
import 'package:jojo/controller/sideBarController.dart';
import 'package:jojo/pages/homePage.dart';
import 'package:jojo/pages/profile.dart';
import 'package:jojo/pages/camera.dart';
import 'package:jojo/pages/doorbell.dart';
import 'package:jojo/pages/log.dart';
import 'package:jojo/pages/scenario.dart';
import 'package:jojo/pages/setting.dart';
import 'package:jojo/pages/shortCut.dart';
import 'package:jojo/pages/temp.dart';




class sideBar extends StatelessWidget {
  final controller = Get.put(homeScreen());
  final active = Get.put(sideBarController());
  BoxDecoration boxDecoration = BoxDecoration(color: Color(0xFFFF8B00), borderRadius: BorderRadius.circular(10.0));
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      color: Color(0xFF333132),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: (){
              controller.serCurrentPage(ProfileScreen());
              active.changeIsActive(0);
            },
            child: Container(
              width: Get.width/.8,
              height: Get.height / 15,
              decoration:active.IsActive[0] ? boxDecoration : null,
              child: Center(
                child: Icon(Icons.person_outline , size: 40.0, color: Colors.white,),
              ),
            ),
          ) ,
          InkWell(
            onTap: (){
              controller.serCurrentPage(SettingScreen());
              active.changeIsActive(1);
            },
            child: Container(
              width: Get.width/.8,
              height: Get.height / 15,
              decoration: active.IsActive[1] ? boxDecoration : null,
              child: Center(
                child: Icon(Icons.settings_outlined , size: 40.0, color: Colors.white,),
              ),
            ),
          ) ,
          InkWell(
            onTap: (){
              controller.serCurrentPage(LogScreen());
              active.changeIsActive(2);
            },
            child: Container(
              width: Get.width/.8,
              height: Get.height / 15,
              decoration: active.IsActive[2] ? boxDecoration : null,
              child: Center(
                child: Icon(Icons.history_outlined , size: 40.0, color: Colors.white,),
              ),
            ),
          ) ,
          InkWell(
            onTap: (){
              // controller.serCurrentPage(HomePage());
              active.changeIsActive(3);
            },
            child: Container(
              width: Get.width/.8,
              height: Get.height / 15,
              decoration: active.IsActive[3] ? boxDecoration : null,
              child: Center(
                child: Icon(Icons.settings_remote_outlined , size: 40.0, color: Colors.white,),
              ),
            ),
          ) ,
          InkWell(
            onTap: (){
              controller.serCurrentPage(tempScreen());
              active.changeIsActive(4);
            },
            child: Container(
              width: Get.width/.8,
              height: Get.height / 15,
              decoration: active.IsActive[4] ? boxDecoration : null,
              child: Center(
                child: Icon(Icons.thermostat_outlined , size: 40.0, color: Colors.white,),
              ),
            ),
          ) ,
          InkWell(
            onTap: (){
              controller.serCurrentPage(HomePage());
              active.changeIsActive(5);
            },
            child: Container(
              width: Get.width/.8,
              height: Get.height / 15,
              decoration: active.IsActive[5] ? boxDecoration : null,
              child: Center(
                child: Icon(Icons.home_outlined , size: 40.0, color: Colors.white,),
              ),
            ),
          ) ,
          InkWell(
            onTap: (){
              controller.serCurrentPage(ScenarioScreen());
              active.changeIsActive(6);
            },
            child: Container(
              width: Get.width/.8,
              height: Get.height / 15,
              decoration: active.IsActive[6] ? boxDecoration : null,
              child: Center(
                child: Icon(Icons.smart_toy_outlined , size: 40.0, color: Colors.white,),
              ),
            ),
          ) ,
          InkWell(
            onTap: (){
              controller.serCurrentPage(ShortCutScreen());
              active.changeIsActive(7);
            },
            child: Container(
              width: Get.width/.8,
              height: Get.height / 15,
              decoration: active.IsActive[7] ? boxDecoration : null,
              child: Center(
                child: Icon(Icons.toggle_on_outlined , size: 40.0, color: Colors.white,),
              ),
            ),
          ) ,
          InkWell(
            onTap: (){
              controller.serCurrentPage(CameraScreen());
              active.changeIsActive(8);
            },
            child: Container(
              width: Get.width/.8,
              height: Get.height / 15,
              decoration: active.IsActive[8] ? boxDecoration : null,
              child: Center(
                child: Icon(Icons.videocam_outlined , size: 40.0, color: Colors.white,),
              ),
            ),
          ) ,
          InkWell(
            onTap: (){
              controller.serCurrentPage(DoorbellScreen());
              active.changeIsActive(9);
            },
            child: Container(
              width: Get.width/.8,
              height: Get.height / 15,
              decoration: active.IsActive[9] ? boxDecoration : null,
              child: Center(
                child: Icon(Icons.doorbell_outlined , size: 40.0, color: Colors.white,),
              ),
            ),
          ) ,           
        ],
      ),
    );
  }
}