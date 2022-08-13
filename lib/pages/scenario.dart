import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jojo/controller/ScenarioController.dart';

class ScenarioScreen extends StatelessWidget {
  const ScenarioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Scenario());

    return Row(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: Get.width * 0.5,
          height: Get.height,
          child: ListView(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            children: [
              Wrap(
                  spacing: 10.0,
                  runSpacing: 10.0,
                  children: List.generate(controller.BtnDatas.length, (index) {
                    return Obx(() => InkWell(
                          onTap: (() => {controller.changeBtnActive(index)}),
                          child: Container(
                            width: Get.width * 0.23,
                            height: Get.width * 0.23,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFF303030),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.lightbulb_outlined,
                                  size: 30,
                                  color: controller.BtnDatas[index][1] as bool
                                      ? Color.fromARGB(255, 135, 117, 255)
                                      : Color.fromARGB(255, 154, 154, 154),
                                ),
                                Center(
                                  child: Text(
                                    controller.BtnDatas[index][0] as String,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 17.0,
                                      color: controller.BtnDatas[index][1]
                                              as bool
                                          ? Color.fromARGB(255, 135, 117, 255)
                                          : Color.fromARGB(255, 154, 154, 154),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ));
                  })),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: Get.width * 0.25,
          height: Get.height,
          margin: EdgeInsets.only(top: 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFF303030),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Container(
              height: Get.height - 50,
              child: ListView(
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
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: controller.categury[index][1]
                                              as bool
                                          ? Color.fromARGB(255, 135, 117, 255)
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
                                        borderRadius: BorderRadius.circular(50),
                                        color: controller.categury[index][1]
                                                as bool
                                            ? Color.fromARGB(255, 135, 117, 255)
                                            : Color.fromARGB(0, 255, 255, 255),
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
            ),
          ),
        ),
      )
    ]);
  }
}
