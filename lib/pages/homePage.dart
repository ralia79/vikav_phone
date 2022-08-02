import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF333132),
      child: Center(
        child: Text("Home Page !"),
      ),
    );
  }
}