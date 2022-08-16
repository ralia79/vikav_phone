import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:jojo/controller/tempController.dart';
import 'package:jojo/widgets/StatefulWrapper.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class tempScreen extends StatelessWidget {
  final controller = Get.put(temp());

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: () {
        controller.setactiveSection(controller.SectionsData[0][0]);
        controller.setactiveSectionH(controller.SectionsData[0][1]);
        controller.setactiveSectionT(controller.SectionsData[0][2]);
        controller.setActive(0);
      },
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
            width: Get.width,
            height: Get.height * 0.55,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Stack(
                    children: [
                      Container(
                        width: Get.width,
                        child: SleekCircularSlider(
                          innerWidget: (percentage) => Center(
                              child: Text(
                            controller.isOff.value
                                ? "خاموش"
                                : percentage.toInt().toString() + "°C",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          )),
                          appearance: CircularSliderAppearance(
                              size: Get.height / 3.5,
                              customWidths: CustomSliderWidths(
                                progressBarWidth: 10,
                                handlerSize: 12,
                                trackWidth: 8,
                                shadowWidth: 2,
                              ),
                              customColors: CustomSliderColors(
                                progressBarColor: Color(0xFFFF8C00),
                                shadowColor: Color(0xFF0000),
                                dotColor: Color(0xFFFF8C00),
                                trackColor: Color(0xFF5A5A5A),
                              )),
                          min: 20,
                          max: 40,
                          initialValue: 20,
                          onChange: (value) => {
                            if (value == 20)
                              controller.changeISOFF(true)
                            else
                              controller.changeISOFF(false)
                          },
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Container(
                              width: Get.width / 1.8,
                              margin: EdgeInsets.only(top: Get.height / 4.2),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "خاموش",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                  InkWell(
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      child: Image.asset(
                                          "assets/images/radiator_active.png"),
                                    ),
                                    onTap: () => {},
                                  ),
                                  InkWell(
                                    child: Container(
                                      margin: EdgeInsets.only(top: 4),
                                      width: 30,
                                      height: 30,
                                      child: Image.asset(
                                          "assets/images/cooler_deactive.png"),
                                    ),
                                    onTap: () => {
                                      Fluttertoast.showToast(
                                          msg:
                                              "این قابلیت در این نسخه در دسترس نمیباشد")
                                    },
                                  ),
                                  Text(
                                    "40°C",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: Get.width,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Column(children: [
                                  Obx(() => Text(
                                        controller.activeSection.value,
                                        style: TextStyle(
                                            fontSize: 30.0,
                                            color: Colors.white),
                                      )),
                                  Container(
                                    width: Get.width / 2,
                                    height: 1,
                                    color: Color(0xFFA5A5A5),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            child: Column(
                                          children: [
                                            Text(
                                              "٪  رطوبت  ",
                                              style: TextStyle(
                                                  fontSize: 20.0,
                                                  color: Color(0xFFA5A5A5)),
                                            ),
                                            Obx(() => Text(
                                                  controller
                                                      .activeSectionH.value,
                                                  style: TextStyle(
                                                      fontSize: 25.0,
                                                      color: Colors.white),
                                                ))
                                          ],
                                        )),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20.0, right: 20.0),
                                          child: Container(
                                            width: 1,
                                            height: 75,
                                            color: Color(0xFF6B6B6B),
                                          ),
                                        ),
                                        Container(
                                            child: Column(
                                          children: [
                                            Text(
                                              "°C  دما  ",
                                              style: TextStyle(
                                                  fontSize: 20.0,
                                                  color: Color(0xFFA5A5A5)),
                                            ),
                                            Obx(() => Text(
                                                  controller
                                                      .activeSectionT.value,
                                                  style: TextStyle(
                                                      fontSize: 25.0,
                                                      color: Colors.white),
                                                ))
                                          ],
                                        )),
                                      ],
                                    ),
                                  )
                                ]),
                              ),
                            ),
                            Container(
                              // margin: EdgeInsets.all(20),
                              width: Get.width / 1.8,
                              height: Get.height / 15,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xFF333131),
                                ),
                                child: Text(
                                  "انجام بده",
                                  style: TextStyle(fontSize: 16),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
            // color: Colors.white,
            ),
        Container(
          width: Get.width,
          height: Get.height * 0.45,
          child: ListView(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            children: [
              Align(
                alignment: Alignment.center,
                child: Wrap(
                    runSpacing: 10.0,
                    spacing: 10.0,
                    children:
                        List.generate(controller.SectionsData.length, (index) {
                      return InkWell(
                        onTap: () {
                          controller.setactiveSection(
                              controller.SectionsData[index][0]);
                          controller.setactiveSectionH(
                              controller.SectionsData[index][1]);
                          controller.setactiveSectionT(
                              controller.SectionsData[index][2]);
                          controller.setActive(index);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Obx(() => Container(
                                width: Get.width * 0.25,
                                height: Get.width * 0.25,
                                decoration:
                                    controller.SectionsData[index][4] as bool
                                        ? controller.DecorActive
                                        : controller.DecorSimple,
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.thermostat_outlined,
                                        size: 35.0,
                                        color: Color(0xFFA5A5A5),
                                      ),
                                      Text(
                                        controller.SectionsData[index][0]
                                            as String,
                                        style: TextStyle(
                                            fontSize: 17.0,
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                )),
                              )),
                        ),
                      );
                    })),
              )
            ],
          ),
        )
      ]),
    );
  }
}
