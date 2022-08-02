// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jojo/controller/homeScreenController.dart';
import 'package:jojo/controller/mainPage_controller.dart';
import 'package:jojo/pages/camera.dart';

class HomePage extends StatelessWidget {
  final mainPageController = Get.put(mainPage());
  final homeScreenController = Get.put(homeScreen());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: Get.width,
            height: Get.height * 0.3,
            child: Container(
              width: Get.width,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () =>
                          {homeScreenController.serCurrentPage(CameraScreen())},
                      child: Obx(() => Image.asset(
                            mainPageController.activeCamera[0].toString(),
                            width: Get.width * 0.8,
                            // height: Get.height / 4.6,
                          )),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Container(
                      width: Get.width * 0.8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Obx(() => Container(
                                width: 40,
                                height: 35,
                                child: ElevatedButton(
                                  onPressed: () {
                                    mainPageController.setActiveCamera(0);
                                  },
                                  child: Text(
                                    "1",
                                    style: TextStyle(
                                        color: mainPageController.activeNum == 0
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 16),
                                    textAlign: TextAlign.center,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          8), // <-- Radius
                                    ),
                                    primary: mainPageController.activeNum == 0
                                        ? Colors.white
                                        : Color.fromARGB(255, 51, 49, 49),
                                  ),
                                ),
                              )),
                          Obx(() => Container(
                                width: 40,
                                height: 35,
                                child: ElevatedButton(
                                  onPressed: () {
                                    mainPageController.setActiveCamera(1);
                                  },
                                  child: Text(
                                    "2",
                                    style: TextStyle(
                                        color: mainPageController.activeNum == 1
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 16),
                                    textAlign: TextAlign.center,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          8), // <-- Radius
                                    ),
                                    primary: mainPageController.activeNum == 1
                                        ? Colors.white
                                        : Color.fromARGB(255, 51, 49, 49),
                                  ),
                                ),
                              )),
                          Obx(() => Container(
                                width: 40,
                                height: 35,
                                child: ElevatedButton(
                                  onPressed: () {
                                    mainPageController.setActiveCamera(2);
                                  },
                                  child: Text(
                                    "3",
                                    style: TextStyle(
                                        color: mainPageController.activeNum == 2
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 16),
                                    textAlign: TextAlign.center,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          8), // <-- Radius
                                    ),
                                    primary: mainPageController.activeNum == 2
                                        ? Colors.white
                                        : Color.fromARGB(255, 51, 49, 49),
                                  ),
                                ),
                              )),
                          Obx(() => Container(
                                width: 40,
                                height: 35,
                                child: ElevatedButton(
                                  onPressed: () {
                                    mainPageController.setActiveCamera(3);
                                  },
                                  child: Text(
                                    "4",
                                    style: TextStyle(
                                        color: mainPageController.activeNum == 3
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 16),
                                    textAlign: TextAlign.center,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          8), // <-- Radius
                                    ),
                                    primary: mainPageController.activeNum == 3
                                        ? Colors.white
                                        : Color.fromARGB(255, 51, 49, 49),
                                  ),
                                ),
                              )),
                        ],
                      ),
                    )
                  ]),
            ),
          ),
          Container(
              width: Get.width,
              height: Get.height * 0.27,
              child: Wrap(
                  spacing: Get.width / 25,
                  runSpacing: Get.width / 25,
                  direction: Axis.vertical,
                  children: List.generate(mainPageController.favScenario.length,
                      (index) {
                    return Obx(() => InkWell(
                          onTap: () {
                            mainPageController.setScenarioActive(index);
                          },
                          child: Container(
                            width: Get.width / 4,
                            height: Get.height / 8,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 48, 48, 48),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  mainPageController.favScenario[index][1]
                                      as IconData,
                                  color: mainPageController.favScenario[index]
                                          [3] as bool
                                      ? Color.fromARGB(255, 135, 117, 255)
                                      : Color.fromARGB(255, 126, 126, 126),
                                  size: 45,
                                ),
                                Text(
                                  mainPageController.favScenario[index][0]
                                      as String,
                                  style: TextStyle(
                                      fontFamily: "IranSans",
                                      fontSize: 16,
                                      color: Colors.white),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ));
                  }))),
          Container(
            width: Get.width,
            height: Get.height * 0.35,
            child: Wrap(
                spacing: Get.width / 25,
                runSpacing: Get.width / 25,
                direction: Axis.vertical,
                children: List.generate(mainPageController.favShortCut.length,
                    (index) {
                  return Obx(() => InkWell(
                        onTap: () {
                          mainPageController.setShortCutActive(index);
                        },
                        child: Container(
                          width: Get.width / 4,
                          height: Get.height / 10,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 48, 48, 48),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                mainPageController.favShortCut[index][1]
                                    as IconData,
                                color: mainPageController.favShortCut[index][3]
                                        as bool
                                    ? Color.fromARGB(255, 255, 204, 0)
                                    : Color.fromARGB(255, 126, 126, 126),
                                size: 45,
                              ),
                              Text(
                                mainPageController.favShortCut[index][0]
                                    as String,
                                style: TextStyle(
                                    fontFamily: "IranSans",
                                    fontSize: 16,
                                    color: Colors.white),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ));
                })),
          ),
        ],
      ),
    );
  }
}
