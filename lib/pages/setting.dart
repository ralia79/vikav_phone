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
          InkWell(
            onTap: () {
              Get.defaultDialog(
                title: "توجه",
                titleStyle: TextStyle(color: Colors.white),
                textCancel: "لغو کردن",
                textConfirm: "انجام بده",
                buttonColor: Color.fromARGB(61, 78, 78, 78),
                cancelTextColor: Colors.red,
                confirmTextColor: Colors.green,
                backgroundColor: Color(0xFF333132),
                onConfirm: () {
                  // do something
                },
                content: Container(
                  width: Get.width * .7,
                  margin: EdgeInsets.all(10.0),
                  height: 100,
                  child: TextField(
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
                        focusedBorder: Controller.borderOut),
                  ),
                ),
              );
            },
            child: Container(
              width: Get.width,
              height: 70,
              decoration: Controller.decor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Ip پنل مرکزی ",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(Icons.dns_outlined , size: 30.0, color: Color.fromARGB(255, 119, 119, 119),)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
