import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingController extends GetxController {
  var decor = BoxDecoration(
    color: Color(0xFF303030),
    borderRadius: BorderRadius.circular(5.0),
    border: Border.all(
      width: 1,
      color: Color.fromARGB(255, 104, 104, 104),
    ),
  );
  var borderOut = OutlineInputBorder(
    borderSide: BorderSide(
      width: 1,
      color: Color.fromARGB(255, 107, 107, 107),
    ),
  );

  final text1 = TextStyle(fontSize: 17.0, color: Colors.white);
}
