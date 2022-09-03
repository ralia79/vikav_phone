import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:jojo/controller/cameraController.dart';
import 'package:jojo/pages/homeScreen.dart';
import 'package:jojo/widgets/simpleSplash.dart';

class SingleCamera extends StatelessWidget {
  final Controller = Get.put(camera());

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Fluttertoast.cancel();
        Fluttertoast.showToast(
            msg: "بازگشت صرفا با دکمه های مشخص شده امکان پذیر است !");
        return false;
      },
      child: Container(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          //  section for camera video
          Obx(() => Container(
                width: Get.width * 0.7,
                height: Get.height * 0.8,
                child: Controller.cameraActive.value != ""
                    ? Image.asset(Controller.cameraActive.value)
                    : CircleAvatar(),
              )),

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
                            Obx(() => Text(
                                  Controller.cameraActiveDetail.value,
                                  style: TextStyle(color: Colors.white),
                                )),
                          ],
                        )),
                  ),
                  Container(
                    width: double.infinity,
                    height: Get.height * 0.15,
                    child: OutlinedButton(
                        onPressed: () {
                        },
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
                          Controller.setCameraActive("");
                          Controller.setCameraActiveDetail("");
                          Get.off(() => SimpleSplash(RoutUrl: HomeScreen()));
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
    );
  }
}
