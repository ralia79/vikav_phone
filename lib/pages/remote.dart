import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RemoteScreen extends StatelessWidget {
  const RemoteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 0, 0, 0),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: Get.width,
            height: Get.height / 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFF333131),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.timer_outlined, size: 30, color: Colors.white),
                  Text(
                    "به زودی منتظر این قابلیت باشید",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
