import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class temp extends GetxController {
  var SectionsData = [
    //  [ sectionName , tempNow , H Now , T later] ;
    ["اتاق 1", "20", "10", "30", false],
    ["اتاق 2", "21", "11", "30", false],
    ["اتاق 3", "22", "12", "30", false],
    ["اتاق 4", "23", "13", "30", false],
    ["اتاق 5", "24", "14", "30", false],
    ["اتاق 6", "25", "15", "30", false],
    ["اتاق 7", "26", "16", "30", false],
    ["اتاق 8", "27", "17", "30", false],
    ["اتاق 9", "28", "18", "30", false],
    ["اتاق 10", "29", "19", "30", false],
    ["اتاق 11", "30", "20", "30", false],
    ["اتاق 12", "31", "21", "30", false],
    ["اتاق 13", "32", "22", "30", false],
  ].obs;
  var isOff = true.obs;
  var activeSection = "".obs;
  var activeSectionH = "".obs;
  var activeSectionT = "".obs;
  var activeSectionTN = "".obs;
  var DecorActive = BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Color(0xFF303030),
      border: Border.all(color: Color(0xFFFF8C00)));
  var DecorSimple = BoxDecoration(
    borderRadius: BorderRadius.circular(10.0),
    color: Color(0xFF303030),
  );

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
