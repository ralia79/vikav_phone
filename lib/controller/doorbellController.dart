import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class doorbell extends GetxController {
  String ScreenShotPath = "";
  String CaneraPath = "";

  var items = [
    [Icons.phone, false],
    [Icons.mic_off, false],
    [Icons.volume_up, false],
    [Icons.vpn_key, false],
    [Icons.do_not_disturb, false],
    [Icons.screenshot_outlined, false],
  ].obs;

  void checkActive(num) {
    if (num == 1) {
      if (this.items[0][1] as bool) {
        this.items[0][1] = false;
      } else {
        this.items[0][1] = true;
      }
    } else if (num == 2) {
      if (this.items[1][1] as bool) {
        this.items[1][1] = false;
      } else {
        this.items[1][1] = true;
      }
    } else if (num == 3) {
      if (this.items[2][1] as bool) {
        this.items[2][1] = false;
      } else {
        this.items[2][1] = true;
      }
    } else if (num == 4) {
      if (this.items[3][1] as bool) {
        print("please wait !");
      } else {
        this.items[3][1] = true;
        this.items.refresh();

        Future.delayed(Duration(seconds: 1), () {
          this.items[3][1] = false;
          this.items.refresh();
        });
      }
    } else if (num == 5) {
      if (this.items[4][1] as bool) {
        this.items[4][1] = false;
      } else {
        this.items[4][1] = true;
      }
    } else if (num == 6) {
      if (this.items[5][1] as bool) {
        print("please wait !");
      } else {
        this.items[5][1] = true;
        this.items.refresh();

        Future.delayed(Duration(seconds: 1), () {
          this.items[5][1] = false;
          this.items.refresh();
        });
      }
    }

    print("done !");
    print(items);
    this.items.refresh();
    print(items);
  }

  void setScreenShotPath(innerData) {
    this.ScreenShotPath = innerData;
    update();
  }

  void setCaneraPath(innerData) {
    this.CaneraPath = innerData;
    update();
  }
}
