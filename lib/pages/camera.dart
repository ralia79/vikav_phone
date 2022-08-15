import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jojo/controller/cameraController.dart';
import 'package:jojo/pages/SingleCamera.dart';
import 'package:jojo/widgets/simpleSplash.dart';
import 'package:jojo/widgets/simpleSplashGo.dart';

class CameraScreen extends StatelessWidget {
  final controller = Get.put(camera());
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 0, 0, 0),
      child: Container(
        child: ListView.builder(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemCount: controller.cameras.length,
            itemBuilder: (BuildContext ctxt, int index) {
              return Container(
                width: Get.width,
                height: Get.height / 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          controller.cameras[index][0],
                          alignment: Alignment.center,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: InkWell(
                          onTap: () => {
                            controller
                                .setCameraActive(controller.cameras[index][0]),
                            controller.setCameraActiveDetail(
                                controller.cameras[index][1]),
                            Get.off(SimpleSplashGo(RoutUrl: SingleCamera())),
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 10.0),
                            child: Icon(
                              Icons.fullscreen,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
