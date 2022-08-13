import 'package:get/get.dart';

class Scenario extends GetxController {
  var categury = [
    ["همه", true],
    ["پذیرایی", false],
    ["اتاق خواب 1", false],
    ["اتاق خواب 2", false],
    ["طبقه 1", false],
    ["پارکینگ", false],
    ["استخر", false],
    ["پارکینگ", false],
    ["درب ها", false]
  ].obs;
  var BtnDatas = [
    ["اتاق خواب", false],
    ["اتاق خواب", false],
    ["اتاق خواب", false],
    ["اتاق خواب", false],
    ["اتاق خواب", false],
    ["اتاق خواب", false],
    ["اتاق خواب", false],
    ["اتاق خواب", false],
    ["اتاق خواب", false],
    ["اتاق خواب", false],
    ["اتاق خواب", false],
    ["اتاق خواب", false],
    ["اتاق خواب", false],
    ["اتاق خواب", false],
    ["اتاق خواب", false],
    ["اتاق خواب", false],
    ["اتاق خواب", false],
    ["اتاق خواب", false],
    ["اتاق خواب", false],
    ["اتاق خواب", false],
  ].obs;

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

  void changeBtnActive(num) {
    this.BtnDatas[num][1] = true;
    this.BtnDatas.refresh();

    Future.delayed(Duration(seconds: 1), () {
      this.BtnDatas[num][1] = false;

      this.BtnDatas.refresh();
    });
  }

  void setCategury(innerData) {
    this.categury = innerData;
    update();
  }

  void setbtn(innerData) {
    this.BtnDatas = innerData;
    update();
  }
}
