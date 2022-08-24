import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:jojo/pages/homeScreen.dart';
import 'package:local_auth/local_auth.dart';
import 'package:local_auth_android/local_auth_android.dart';

class Login extends GetxController {
  DateTime timeBackPressed = DateTime.now();
  bool isFinger = false;
  TextEditingController UsernameControler = new TextEditingController();
  TextEditingController PasswordControler = new TextEditingController();
  LocalAuthentication LocalAuth = LocalAuthentication();

  void getFinger() async {
    bool authinticated = false;
    try {
      if (await LocalAuth.canCheckBiometrics) {
        authinticated = await LocalAuth.authenticate(
          localizedReason: "scan your fingerprint",
          authMessages: [
            AndroidAuthMessages(
              signInTitle: 'ورود با اثر انگشت',
              cancelButton: 'انصراف',
              biometricHint: "",
            )
          ],
          options: AuthenticationOptions(
            useErrorDialogs: true,
            biometricOnly: true,
            stickyAuth: true,
          ),
        );
        if (authinticated) {
          Get.snackbar("", "لطفا کمی صبر کنید",
              snackPosition: SnackPosition.BOTTOM, colorText: Colors.white);

          Timer(Duration(milliseconds: 1600), (() => {Get.off(HomeScreen())}));
        } else {
          Get.snackbar("", "اعتبار سنجی با موفقیت انجام نشد",
              snackPosition: SnackPosition.BOTTOM, colorText: Colors.white);
        }
      }
    } on PlatformException {
      print("is not");
      isFinger = false;
      Get.snackbar(
        "",
        "مشکلی رخ داده است دوباره تلاش کنید",
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.white,
      );
      return;
    }
    print("Touch authed");
  }

  isFingerSupport() async {
    if (await LocalAuth.canCheckBiometrics) {
      isFinger = true;
    } else {
      isFinger = false;
    }
  }

  void EnterWithPass() {
    FocusManager.instance.primaryFocus?.unfocus();
    if (UsernameControler.value.text == "admin" &&
        PasswordControler.value.text == "admin") {
      Get.snackbar("", "لطفا کمی صبر کنید",
          snackPosition: SnackPosition.BOTTOM, colorText: Colors.white);
      // UsernameControler.clear();
      PasswordControler.clear();

      Timer(Duration(milliseconds: 1600), (() => {Get.off(HomeScreen())}));
    } else {
      Get.snackbar("", "اعتبار سنجی با موفقیت انجام نشد",
          snackPosition: SnackPosition.BOTTOM, colorText: Colors.white);
    }
  }
}
