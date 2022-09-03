import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SimpleSplash extends StatefulWidget {
  final RoutUrl;
  const SimpleSplash({required this.RoutUrl});

  @override
  _SimpleSplashState createState() => _SimpleSplashState();
}

class _SimpleSplashState extends State<SimpleSplash> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
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
