import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:jojo/controller/homeScreenController.dart';
import 'package:jojo/controller/mainPage_controller.dart';
import 'package:jojo/pages/homePage.dart';
import 'package:jojo/widgets/baseSplashScreen.dart';
import './widgets/StatefulWrapper.dart';

void main(List<String> args) {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // fontFamily: GoogleFonts.lato(fontStyle: FontStyle.italic),
          ),
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
          SystemChrome.setPreferredOrientations(
              [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
          print("inited");
          controller.serCurrentPage(HomePage());
          mainPageController.setActiveCamera(0);
        },
        child: Scaffold(body: splashScreen()));
  }
}
