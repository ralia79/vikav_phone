import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
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
      child: Container(
        width: Get.width,
        height: Get.height,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: Get.width * .7,
              height: Get.height * .4,
              child: Image.asset("assets/images/vikav.png"),
            ),
            CircularProgressIndicator(
              color: Color.fromARGB(255, 244, 155, 54),
              strokeWidth: 5,
            ),
            Text(
              " خوش آمدید",
              style: GoogleFonts.lato(
                  fontStyle: FontStyle.italic, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
