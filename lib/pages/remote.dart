import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RemoteScreen extends StatelessWidget {
  const RemoteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
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
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.only(bottom: 10.0),
            width: Get.width,
            height: 70.0,
            decoration: BoxDecoration(
            color: Color(0xFF333131),
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(width: 1 , color: Color.fromARGB(255, 104, 104, 104))
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(Icons.music_note , size: 30.0, color: Colors.white,),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("mohammad alizadeh" , style: TextStyle(color: Colors.white , fontSize: 15.0),) , 
                    Text("joz to" , style: TextStyle(color: Color.fromARGB(255, 105, 105, 105) , fontSize: 15.0),)
                  ],

                ),
                  ],
                ),
                Container(
                  width: Get.width * 0.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(child: Icon(Icons.skip_previous , color: Colors.white, size: 25.0,)),
                        InkWell(child: Icon(Icons.pause_circle , color: Colors.white, size: 30.0,)),
                        InkWell(child: Icon(Icons.skip_next , color: Colors.white, size: 25.0,)),
                      ],
                  ),
                )
              ],
            ),
          
          ),
        ),
      ],
    );
  }
}
