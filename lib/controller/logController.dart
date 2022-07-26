import 'package:get/get.dart';

class LogScreen extends GetxController {
  var logs = [];
  String pathPdf = "";

  void setlogs(innerData) {
    this.logs = innerData;
    update();
  }

  void setpathPdf(innerData) {
    this.pathPdf = innerData;
    update();
  }
}
