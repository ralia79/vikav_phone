import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SimpleSplashGo extends StatefulWidget {
  final RoutUrl;
  const SimpleSplashGo({required this.RoutUrl});

  @override
  _SimpleSplashGoState createState() => _SimpleSplashGoState();
}

class _SimpleSplashGoState extends State<SimpleSplashGo> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    super.initState();
    Timer(
      Duration(milliseconds: 2000),
      () => Get.off(() => widget.RoutUrl)
    );
  }

  @override
  Widget build(BuildContext context) {
    var sizeScreen = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        color: Color.fromARGB(40, 51, 49, 49),
        // color: Colors.black,
        child: Center(
          child: Container(
            width: sizeScreen / 5,
            height: sizeScreen / 5,
            child: CircularProgressIndicator(
              color: Color.fromARGB(255, 254, 140, 0),
            ),
          ),
        ),
      ),
    );
  }
}
