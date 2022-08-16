import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogController extends GetxController {
  final text1 = TextStyle(fontSize: 17.0, color: Colors.white);
  List logs = [
    "علی",
    "روشن نیا",
    "احمد",
    "عظیمی",
    "سوسن ",
    "پرور",
    "محمد",
    "رضوی",
    "علی",
    "علی",
    "روشن نیا",
    "احمد",
    "عظیمی",
    "سوسن ",
    "پرور",
    "محمد",
    "رضوی",
    "علی",
    "علی",
    "روشن نیا",
    "احمد",
    "عظیمی",
    "سوسن ",
    "پرور",
    "محمد",
    "رضوی",
    "علی",
    "علی",
    "روشن نیا",
    "احمد",
    "عظیمی",
    "سوسن ",
    "پرور",
    "محمد",
    "رضوی",
    "علی",
    "علی",
    "روشن نیا",
    "احمد",
    "عظیمی",
    "سوسن ",
    "پرور",
    "محمد",
    "رضوی",
    "علی",
  ];
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
