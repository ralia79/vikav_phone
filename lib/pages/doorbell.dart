import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jojo/controller/doorbellController.dart';

class DoorbellScreen extends StatelessWidget {
  final controller = Get.put(doorbell());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 30.0, 10.0, 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.33,
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Stack(children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      width: double.infinity,
                      height: double.infinity,
                      child: Image.asset(
                        "assets/images/pic.jpg",
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 2.33,
                      )),
                  // Alignment(x, y)
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0)),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromARGB(15, 91, 91, 91),
                              Color.fromARGB(239, 48, 48, 48),
                            ],
                          )),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 18,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.items.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Obx(() => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: new Container(
                                    child: Icon(
                                      controller.items[index],
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                ));
                          }),
                    ),
                  )
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                children: [
                  InkWell(
                    onTap: (() => controller.checkActive(1)),
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 17,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFF707070)),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.phone,
                                color: Colors.green,
                                size: 30,
                              ),
                              Text(
                                "پاسخ دادن",
                                style: TextStyle(
                                    fontSize: 17.0, color: Colors.white),
                              )
                            ]),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (() => controller.checkActive(2)),
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 17,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFF707070)),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.mic_off,
                                color: Colors.red,
                                size: 30,
                              ),
                              Text(
                                "بیصدا کردن",
                                style: TextStyle(
                                    fontSize: 17.0, color: Colors.white),
                              )
                            ]),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (() => controller.checkActive(3)),
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 17,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFF707070)),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.volume_up,
                                color: Color(0xFF00B1FF),
                                size: 30,
                              ),
                              Text(
                                "بلندگو",
                                style: TextStyle(
                                    fontSize: 17.0, color: Colors.white),
                              )
                            ]),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (() => controller.checkActive(6)),
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 17,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFF707070)),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.screenshot_outlined,
                                color: Color(0xFF83AA00),
                                size: 30,
                              ),
                              Text(
                                "عکس برداری",
                                style: TextStyle(
                                    fontSize: 17.0, color: Colors.white),
                              )
                            ]),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (() => controller.checkActive(4)),
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 17,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFF707070)),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.vpn_key,
                                color: Color(0xFFFFAC47),
                                size: 30,
                              ),
                              Text(
                                "باز کردن درب",
                                style: TextStyle(
                                    fontSize: 17.0, color: Colors.white),
                              )
                            ]),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (() => controller.checkActive(5)),
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 17,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFF707070)),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.do_not_disturb,
                                color: Color(0xFF00FFD4),
                                size: 30,
                              ),
                              Text(
                                "مزاحم نشوید",
                                style: TextStyle(
                                    fontSize: 17.0, color: Colors.white),
                              )
                            ]),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
