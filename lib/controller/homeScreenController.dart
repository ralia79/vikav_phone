import 'package:get/get.dart';


class homeScreen extends GetxController {
  var currentPage;

  void serCurrentPage(innerData) {
    this.currentPage = innerData;
    print(innerData);

    update();
  }
}
