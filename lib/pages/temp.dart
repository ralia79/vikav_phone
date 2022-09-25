import 'package:flutter/material.dart';
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
        controller.setactiveSectionTN(controller.SectionsData[0][3]);
        controller.changeISOFF(false);
        controller.setActive(0);
      },
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Obx(
          () => Column(
            children: [
              Container( 
                  width: Get.width,
                  height: Get.height * 0.3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Stack(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    child: Column(
                                  children: [
                                    Text(
                                      "°C  دما  ",
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          color: Color(0xFFA5A5A5)),
                                    ),
                                    Obx(() => Text(
                                          controller.activeSectionT.value,
                                          style: TextStyle(
                                              fontSize: 23.0,
                                              color: Colors.white),
                                        ))
                                  ],
                                )),
                                Container(
                                  child: Obx(() => SleekCircularSlider(
                                        innerWidget: (percentage) => Center(
                                            child: controller.isActive.value
                                                ? Text(
                                                    controller.isOff.value ||
                                                            controller
                                                                    .activeSectionTN ==
                                                                20.0
                                                        ? "خاموش"
                                                        : percentage
                                                                .toInt()
                                                                .toString() +
                                                            "°C",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 40,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                : Text("- -",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 40,
                                                        fontWeight:
                                                            FontWeight.bold))),
                                        appearance: CircularSliderAppearance(
                                            size: Get.height / 4,
                                            customWidths: CustomSliderWidths(
                                              progressBarWidth: 10,
                                              handlerSize: 12,
                                              trackWidth: 8,
                                              shadowWidth: 2,
                                            ),
                                            customColors: CustomSliderColors(
                                              progressBarColor:
                                                  controller.isActive.value
                                                      ? Color(0xFFFF8C00)
                                                      : Color(0xFF5A5A5A),
                                              shadowColor: Color(0xFF0000),
                                              dotColor:
                                                  controller.isActive.value
                                                      ? Color(0xFFFF8C00)
                                                      : Color.fromARGB(
                                                          0, 255, 0, 0),
                                              trackColor: Color(0xFF5A5A5A),
                                            )),
                                        min: 20,
                                        max: 40,
                                        initialValue:
                                            controller.activeSectionTN.value,
                                        onChange: (value) => {
                                          if (value == 20)
                                            controller.changeISOFF(true)
                                          else
                                            controller.changeISOFF(false)
                                        },
                                      )),
                                ),
                                Container(
                                    child: Column(
                                  children: [
                                    Text(
                                      "٪  رطوبت  ",
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          color: Color(0xFFA5A5A5)),
                                    ),
                                    Obx(() => Text(
                                          controller.activeSectionH.value,
                                          style: TextStyle(
                                              fontSize: 23.0,
                                              color: Colors.white),
                                        ))
                                  ],
                                )),
                              ],
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  Container(
                                    width: Get.width * .75,
                                    margin:
                                        EdgeInsets.only(top: Get.height / 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          child: Container(
                                            width: 35,
                                            height: 35,
                                            child: Image.asset(
                                                controller.heaterImg.value),
                                          ),
                                          onTap: () =>
                                              {controller.heaterActive()},
                                        ),
                                        Container(
                                          // width: Get.width / 2,
                                          child: Column(children: [
                                            Obx(() => Text(
                                                  controller
                                                      .activeSection.value,
                                                  style: TextStyle(
                                                      fontSize: 25.0,
                                                      color: Colors.white),
                                                )),
                                          ]),
                                        ),
                                        InkWell(
                                          child: Container(
                                            margin: EdgeInsets.only(top: 4),
                                            width: 35,
                                            height: 35,
                                            child: Image.asset(
                                                controller.coolerImg.value),
                                          ),
                                          onTap: () => {
                                            controller.coolerActive(),
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
              Container(
                      margin: EdgeInsets.only(top: 10.0),
                      width: Get.width,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () {
                                  controller.AC_Hot_Active();
                                },
                                child: Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child:
                                      Image.asset(controller.heaterType.value),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  controller.AC_Cool_Active();
                                },
                                child: Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child:
                                      Image.asset(controller.coolerType.value),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  controller.AC_DRY_Active();
                                },
                                child: Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Image.asset(controller.DryType.value),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  controller.AC_fan_Active();
                                },
                                child: Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Image.asset(controller.fanType.value),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () {
                                  controller.AC_flap_Active();
                                },
                                child: Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Image.asset(controller.flapType.value),
                                ),
                              ),
                              Container(
                                width: Get.width / 2.5,
                                height: Get.height / 15,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xFF333131),
                                  ),
                                  child: Text(
                                    "انجام بده",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  controller.AC_fanSpeed_Active();
                                },
                                child: Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Image.asset(controller.fanSpeed.value),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ))
            ],
          ),
        ),
        Container(
            width: Get.width,
            height: Get.height * 0.45,
            child: Row(
              children: [
                Container(
                  width: Get.width * 0.5,
                  height: Get.height * 0.45,
                  child: ListView(
                    padding: EdgeInsets.all(0),
                    physics: BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    children: [
                      Align(
                        child: Wrap(
                            runSpacing: 10.0,
                            spacing: 10.0,
                            children: List.generate(
                                controller.SectionsData.length, (index) {
                              return InkWell(
                                onTap: () {
                                  controller.setactiveSection(
                                      controller.SectionsData[index][0]);
                                  controller.setactiveSectionH(
                                      controller.SectionsData[index][1]);
                                  controller.setactiveSectionT(
                                      controller.SectionsData[index][2]);
                                  controller.setActive(index);
                                  controller.setactiveSectionTN(
                                      controller.SectionsData[index][3]);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Obx(() => Container(
                                        alignment: Alignment.centerRight,
                                        width: Get.width * 0.5,
                                        height: Get.width * 0.2,
                                        decoration: controller
                                                .SectionsData[index][4] as bool
                                            ? controller.DecorActive
                                            : controller.DecorSimple,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              right: 20.0),
                                          child: Text(
                                            controller.SectionsData[index][0]
                                                as String,
                                            style: TextStyle(
                                                fontSize: 18.0,
                                                color: Colors.white),
                                            textAlign: TextAlign.right,
                                          ),
                                        ),
                                      )),
                                ),
                              );
                            })),
                      )
                    ],
                  ),
                ),
                Container(
                  width: Get.width * 0.32,
                  height: Get.height * 0.45,
                  child: ListView(
                    padding: EdgeInsets.all(0),
                    physics: BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:
                            List.generate(controller.categury.length, (index) {
                          return Obx(() => InkWell(
                                onTap: () =>
                                    {controller.changeCategoryActive(index)},
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10.0, bottom: 10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        controller.categury[index][0] as String,
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: controller.categury[index][1]
                                                  as bool
                                              ? Color(0xFFFF8C00)
                                              : Colors.white,
                                        ),
                                        maxLines: 1,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 15.0,
                                          height: 15.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: controller.categury[index][1]
                                                    as bool
                                                ? Color(0xFFFF8C00)
                                                : Color.fromARGB(
                                                    0, 255, 255, 255),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ));
                        }),
                      ),
                    ],
                  ),
                )
              ],
            ))
      ]),
    );
  }
}
