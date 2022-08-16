import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jojo/pages/homeScreen.dart';
import 'package:jojo/widgets/StatefulWrapper.dart';

class splashScreen extends StatelessWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: () {
        Future.delayed(
            Duration(seconds: 3),
            () => {
                  Get.off(HomeScreen()),
                });
      },
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(color: Color.fromARGB(255, 0, 0, 0)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/vikav.png",
                          width: MediaQuery.of(context).size.width / 3,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "ویکاو",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                        )
                      ]),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(
                        color: Color.fromARGB(255, 254, 140, 0),
                      ),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Text(
                        "خوش آمدید",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )
                    ]),
              )
            ],
          )
        ],
      ),
    );
  }
}
