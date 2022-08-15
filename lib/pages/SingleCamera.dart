import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:jojo/controller/cameraController.dart';
import 'package:jojo/widgets/StatefulWrapper.dart';

class SingleCamera extends StatelessWidget {
  final Controller = Get.put(camera());

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: () {
        Timer(
            Duration(seconds: 0),
            () => {
                  SystemChrome.setPreferredOrientations([
                    DeviceOrientation.landscapeRight,
                    DeviceOrientation.landscapeLeft,
                  ])
                });
      },
      child: WillPopScope(
        onWillPop: () async {
          Fluttertoast.cancel();
          Fluttertoast.showToast(
              msg: "بازگشت صرفا با دکمه های مشخص شده امکان پذیر است !");
          return false;
        },
        child: Container(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            //  section for camera video
            Container(
              width: Get.width * 0.7,
              height: Get.height * 0.8,
              child: Image.asset(Controller.cameraActive.value),
            ),

            // section for buttons
            Container(
              width: Get.width * 0.25,
              height: Get.height * 0.8,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: double.infinity,
                      height: Get.height * 0.15,
                      child: OutlinedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.info_outline,
                                color: Color(0xFF00B1FF),
                              ),
                              Text(
                                Controller.cameraActiveDetail.value,
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )),
                    ),
                    Container(
                      width: double.infinity,
                      height: Get.height * 0.15,
                      child: OutlinedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.queue_play_next,
                                color: Color(0xFFFF8C00),
                              ),
                              Text(
                                "بعدی",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )),
                    ),
                    Container(
                      width: double.infinity,
                      height: Get.height * 0.15,
                      child: OutlinedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.screenshot_outlined,
                                color: Color(0xFF83AA00),
                              ),
                              Text(
                                "عکس برداری",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )),
                    ),
                    Container(
                      width: double.infinity,
                      height: Get.height * 0.15,
                      child: OutlinedButton(
                          onPressed: () {
                            // Navigator.pushReplacement(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => SimpleSplash(
                            //               RoutUrl: MyApp(pagenumber: 9),
                            //             )));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.keyboard_return,
                                color: Color(0xFFFF0000),
                              ),
                              Text(
                                "بازگشت",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )),
                    )
                  ]),
            ),
          ]),
        ),
      ),
    );
  }
}
