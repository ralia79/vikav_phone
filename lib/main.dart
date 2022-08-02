import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jojo/controller/homeScreenController.dart';
import 'package:jojo/controller/mainPage_controller.dart';
import 'package:jojo/pages/homePage.dart';
import 'package:jojo/pages/homeScreen.dart';
import './widgets/StatefulWrapper.dart';

void main(List<String> args) {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final controller = Get.put(homeScreen());
  final mainPageController = Get.put(mainPage());

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
        onInit: () {
          print("inited");
          controller.serCurrentPage(HomePage());
          mainPageController.setActiveCamera(0);
        },
        child: Scaffold(body: HomeScreen()));
  }
}
