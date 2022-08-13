import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class doorbell extends GetxController {
  String ScreenShotPath = "";
  String CaneraPath = "";

  var items = [].obs;

  void checkActive(num) {
    if (num == 1) {
      if (this.items.contains(Icons.phone)) {
        this.items.remove(Icons.phone);
      } else {
        this.items.add(Icons.phone);
      }
    } else if (num == 2) {
      if (this.items.contains(Icons.mic_off)) {
        this.items.remove(Icons.mic_off);
      } else {
        this.items.add(Icons.mic_off);
      }
    } else if (num == 3) {
      if (this.items.contains(Icons.volume_up)) {
        this.items.remove(Icons.volume_up);
      } else {
        this.items.add(Icons.volume_up);
      }
    } else if (num == 4) {
      if (this.items.contains(Icons.vpn_key)) {
      } else {
        this.items.add(Icons.vpn_key);
        Timer(Duration(milliseconds: 1000),
            () => this.items.remove(Icons.vpn_key));
      }
    } else if (num == 5) {
      if (this.items.contains(Icons.do_not_disturb)) {
        this.items.remove(Icons.do_not_disturb);
      } else {
        this.items.add(Icons.do_not_disturb);
      }
    } else if (num == 6) {
      if (this.items.contains(Icons.screenshot_outlined)) {
      } else {
        items.add(Icons.screenshot_outlined);
        Timer(Duration(milliseconds: 1000),
            () => items.remove(Icons.screenshot_outlined));
      }
    }

    this.items.refresh();
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
