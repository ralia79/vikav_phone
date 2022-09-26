import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jojo/controller/settingController.dart';

class SettingScreen extends StatelessWidget {
  final Controller = Get.put(SettingController());

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      width: Get.width,
      height: Get.height,
      child: ListView(
        padding: EdgeInsets.only(top: 0.0),
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          Container(
            width: Get.width,
            height: 70,
            decoration: Controller.decor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: Get.width * .5,
                    height: 100,
                    child: TextField(
                      // maxLength: 15,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 2, right: 10.0),
                        hintTextDirection: TextDirection.rtl,
                        hintText: "ip پنل را وارد کنید",
                        hintStyle: Controller.text1,
                        enabledBorder: Controller.borderOut,
                        focusedBorder: Controller.borderOut
                      ),
                    ),
                  ),
                  Text(
                    "Ip پنل مرکزی : ",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
