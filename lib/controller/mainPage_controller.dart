import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class mainPage extends GetxController {
  var favCamera = [
    "assets/images/camera1.png",
    "assets/images/camera2.jpg",
    "assets/images/camera3.png",
    "assets/images/camera4.jpg",
  ].obs;
  var favScenario = [
    ["سفر 1", Icons.luggage_outlined, "/src", false],
    ["سفر 2", Icons.luggage_outlined, "/src", false],
    ["سفر 3", Icons.luggage_outlined, "/src", false],
    ["سفر 4", Icons.luggage_outlined, "/src", false],
    ["سفر 5", Icons.luggage_outlined, "/src", false],
    ["سفر 6", Icons.luggage_outlined, "/src", false],
  ].obs;
  var favShortCut = [
    ["لامپ 1", Icons.light_outlined, "/src", false],
    ["لامپ 2", Icons.light_outlined, "/src", false],
    ["لامپ 3", Icons.light_outlined, "/src", false],
    ["لامپ 4", Icons.light_outlined, "/src", false],
    ["لامپ 5", Icons.light_outlined, "/src", false],
    ["لامپ 6", Icons.light_outlined, "/src", false],
    ["لامپ 7", Icons.light_outlined, "/src", false],
    ["لامپ 8", Icons.light_outlined, "/src", false],
    ["لامپ 9", Icons.light_outlined, "/src", false],
  ].obs;
  var activeCamera = [""].obs;
  var activeNum = 0.obs;

  void setCamera(innerData) {
    this.favCamera = innerData;
  }

  void setActiveCamera(num) {
    activeNum.value = num;
    String temp = favCamera[num];
    this.activeCamera[0] = temp;
  }

  void setScenario(innerData) {
    this.favScenario = innerData;
  }

  void setShortCut(innerData) {
    this.favShortCut = innerData;
  }

  void setShortCutActive(num) {
    print(favShortCut);
    print(num);
    if (favShortCut[num][3] as bool) {
      print("yes");
      favShortCut[num][3] = false;
    } else
      favShortCut[num][3] = true;

    print(favShortCut);
  }

  void setScenarioActive(num) {
    for (var i = 0; i < favScenario.length; i++) {
      favScenario[i][3] = false;
    }
    favScenario[num][3] = true;
    Future.delayed(Duration(seconds: 1), () {
      favScenario[num][3] = false;
    });
  }
}
