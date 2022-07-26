import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class temp extends GetxController {
  var SectionsData = [
    //  [ sectionName , tempNow , H Now , T later] ;
    ["اتاق 2", "21", "11", 20.0, false],
    ["اتاق 3", "22", "12", 30.0, false],
    ["اتاق 4", "23", "13", 20.0, false],
    ["اتاق 5", "24", "14", 30.0, false],
    ["اتاق 6", "25", "15", 20.0, false],
    ["اتاق 7", "26", "16", 30.0, false],
    ["اتاق 8", "27", "17", 20.0, false],
    ["اتاق 9", "28", "18", 30.0, false],
    ["اتاق 10", "29", "19", 20.0, false],
    ["اتاق اتاق اتاق اتاق 1", "20", "10", 30.0, false],
    ["اتاق 11", "30", "20", 30.0, false],
    ["اتاق 12", "31", "21", 20.0, false],
    ["اتاق 13", "32", "22", 30.0, false],
  ].obs;
  var categury = [
    ["پذیرایی", true],
    ["اتاق خواب 1", false],
    ["اتاق خواب 2", false],
    ["طبقه 1", false],
    ["پارکینگ", false],
    ["استخر", false],
    ["پارکینگ", false],
    ["درب ها", false],
    ["درب ها", false],
    ["درب ها", false],
    ["درب ها", false],
    ["درب ها", false],
  ].obs;
  var isOff = true.obs;
  var activeSection = "".obs;
  var activeSectionH = "".obs;
  var activeSectionT = "".obs;
  var activeSectionTN = 20.0.obs;
  var DecorActive = BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Color(0xFF303030),
      border: Border.all(color: Color(0xFFFF8C00)));
  var DecorSimple = BoxDecoration(
    borderRadius: BorderRadius.circular(10.0),
    color: Color(0xFF303030),
  );
  var isCooler = false.obs;
  var coolerImg = "assets/images/cooler_deactive.png".obs;
  var heaterImg = "assets/images/radiator_active.png".obs;
  var heaterType = "assets/images/ac_hot_off.png".obs;
  var coolerType = "assets/images/ac_cold_off.png".obs;
  var DryType = "assets/images/ac_dry_off.png".obs;
  var fanType = "assets/images/ac_fan_off.png".obs;
  var flapType = "assets/images/ac_blade_off.png".obs;
  var fanSpeed = "assets/images/ac_speed_1.png".obs;
  var isActive = true.obs;

  void changeCategoryActive(num) {
    for (int i = 0; i < this.categury.length; i++) {
      this.categury[i][1] = false;
    }
    if (this.categury[num][1] as bool) {
      this.categury[num][1] = false;
    } else {
      this.categury[num][1] = true;
    }

    this.categury.refresh();
  }

  void AC_fanSpeed_Active() {
    if (fanSpeed.value == "assets/images/ac_speed_1.png" && this.isCooler.value) {
      fanSpeed.value = "assets/images/ac_speed_2.png";
    } else if (fanSpeed.value == "assets/images/ac_speed_2.png" && this.isCooler.value) {
      fanSpeed.value = "assets/images/ac_speed_3.png";
    } else if (fanSpeed.value == "assets/images/ac_speed_3.png" && this.isCooler.value) {
      fanSpeed.value = "assets/images/ac_speed_1.png";
    }else {
      fanSpeed.value = "assets/images/ac_speed_off.png";
    }
  }

  void AC_flap_Active() {
    if (flapType.value == "assets/images/ac_blade_off.png" && this.isCooler.value) {
      flapType.value = "assets/images/ac_blade_on.png";
    } else {
      flapType.value = "assets/images/ac_blade_off.png";
    }
  }

  void AC_fan_Active() {
    if (fanType.value == "assets/images/ac_fan_off.png" && this.isCooler.value) {
      fanType.value = "assets/images/ac_fan_on.png";
      heaterType.value = "assets/images/ac_hot_off.png";
      coolerType.value = "assets/images/ac_cold_off.png";
      DryType.value = "assets/images/ac_dry_off.png";
      isActive.value = false;
    } else {
      fanType.value = "assets/images/ac_fan_off.png";
      isActive.value = true;
    }
  }

  void AC_DRY_Active() {
    if (DryType.value == "assets/images/ac_dry_off.png" && this.isCooler.value) {
      DryType.value = "assets/images/ac_dry_on.png";
      heaterType.value = "assets/images/ac_hot_off.png";
      coolerType.value = "assets/images/ac_cold_off.png";
      fanType.value = "assets/images/ac_fan_off.png";
      isActive.value = false;
    } else {
      DryType.value = "assets/images/ac_dry_off.png";
      isActive.value = true;
    }
  }

  void AC_Cool_Active() {
    isActive.value = true;
    if (coolerType.value == "assets/images/ac_cold_off.png" && this.isCooler.value) {
      coolerType.value = "assets/images/ac_cold_on.png";
      heaterType.value = "assets/images/ac_hot_off.png";
      DryType.value = "assets/images/ac_dry_off.png";
      fanType.value = "assets/images/ac_fan_off.png";
    } else {
      coolerType.value = "assets/images/ac_cold_off.png";
    }
  }

  void AC_Hot_Active() {
    isActive.value = true;
    if (heaterType.value == "assets/images/ac_hot_off.png" && this.isCooler.value) {
      heaterType.value = "assets/images/ac_hot_on.png";
      coolerType.value = "assets/images/ac_cold_off.png";
      DryType.value = "assets/images/ac_dry_off.png";
      fanType.value = "assets/images/ac_fan_off.png";
    } else {
      heaterType.value = "assets/images/ac_hot_off.png";
    }
  }

  void coolerActive() {
    this.coolerImg.value = "assets/images/cooler_active.png";
    this.heaterImg.value = "assets/images/radiator_deactive.png";
    fanSpeed.value = "assets/images/ac_speed_1.png";
    this.isCooler.value = true;
  }

  void heaterActive() {
    this.coolerImg.value = "assets/images/cooler_deactive.png";
    this.heaterImg.value = "assets/images/radiator_active.png";
    this.isCooler.value = false;
    this.isActive.value = true;
    heaterType.value = "assets/images/ac_hot_off.png";
    coolerType.value = "assets/images/ac_cold_off.png";
    DryType.value = "assets/images/ac_dry_off.png";
    fanType.value = "assets/images/ac_fan_off.png";
    flapType.value = "assets/images/ac_blade_off.png";
    fanSpeed.value = "assets/images/ac_speed_off.png";
  }

  void setActive(num) {
    for (int i = 0; i < this.SectionsData.length; i++) {
      this.SectionsData[i][4] = false;
    }
    this.SectionsData[num][4] = true;

    this.SectionsData.refresh();
  }

  void setactiveSection(newData) {
    this.activeSection.value = newData;
  }

  void setactiveSectionH(newData) {
    this.activeSectionH.value = newData;
  }

  void setactiveSectionT(newData) {
    this.activeSectionT.value = newData;
  }

  void setactiveSectionTN(newData) {
    this.activeSectionTN.value = newData;
  }

  void changeISOFF(newData) {
    this.isOff.value = newData;
  }

  void setSectionsData(innerData) {
    this.SectionsData = innerData;
    update();
  }
}
