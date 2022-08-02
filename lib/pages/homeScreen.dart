import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jojo/controller/homeScreenController.dart';
import 'package:jojo/widgets/sidebar.dart';


class HomeScreen extends StatelessWidget {
  final controller = Get.put(homeScreen());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: Get.width,
      height: Get.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GetBuilder<homeScreen>(builder: (value) {
            return Container(
              width: Get.width * .83,
              height: Get.height,
              child: controller.currentPage,
            );
          }),
          Container(
            width: Get.width * .15,
            height: Get.height,
            child: sideBar(),
          ),
        ],
      ),
    );
  }
}
