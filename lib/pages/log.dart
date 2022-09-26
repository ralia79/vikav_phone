import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jojo/controller/logController.dart';

class LogScreen extends StatelessWidget {
  final controller = Get.put(LogController());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 0, 0, 0),
      child: Stack(
        children: [
          Container(
            width: Get.width,
            height: Get.height * 0.9,
            child: ListView.builder(
              itemCount: controller.logs.length,
              physics: BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              padding: EdgeInsets.only(top: 0),
              itemBuilder: (context, index) {
                return Card(
                  color: Color.fromARGB(255, 0, 0, 0),
                  child: Row(children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        color: Color(0xFF303030),
                      ),
                      width: Get.width * 0.58,
                      height: 70,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("خروج از خانه ", style: controller.text1),
                                Text(" - ", style: controller.text1),
                                Text(controller.logs[index],
                                    style: controller.text1)
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "1400/12/18 ,  22:33",
                              textAlign: TextAlign.end,
                              style: controller.text1,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF303030),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          )),
                      width: Get.width * 0.2,
                      // width: double.infinity,
                      height: 70,
                      child: Icon(
                        Icons.sensor_door_outlined,
                        size: 40,
                        color: Colors.white,
                      ),
                    )
                  ]),
                );
              },
            ),
          ),
          Container(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 8.0, right: 5.0, bottom: 0.0, left: 4.0),
                child: Container(
                    height: Get.height * 0.09,
                    width: Get.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 1,
                        color: Color.fromARGB(255, 69, 69, 69),
                      ),
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    // height: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.file_download_outlined,
                              size: 40.0,
                              color: Color(0xFF83AA00),
                            ),
                            Text(
                              "دانلود pdf",
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF83AA00),
                                  fontFamily: "IranSans"),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.list_outlined,
                                size: 40.0, color: Color(0xFF00FFD4)),
                            Text(
                              "نمایش همه",
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF00FFD4),
                                  fontFamily: "IranSans"),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.filter_alt_outlined,
                              size: 40.0,
                              color: Colors.red,
                            ),
                            Text(
                              "فیلتر کردن",
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.red,
                                  fontFamily: "IranSans"),
                            )
                          ],
                        ),
                        InkWell(
                          onTap: (() => {
                                Get.bottomSheet(
                                  Padding(
                                    padding: MediaQuery.of(context).viewInsets,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              2,
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 33, 33, 33),
                                        // border: Border.all(width: 1 , color: Colors.red)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: double.infinity,
                                                height: 60,
                                                child: TextField(
                                                  textAlign: TextAlign.right,
                                                  textDirection:
                                                      TextDirection.rtl,
                                                  decoration: InputDecoration(
                                                    hintText:
                                                        'کلمه ی مورد نظر را وارد کنید',
                                                    hintStyle: controller.text1,
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          width: 1,
                                                          color: Colors
                                                              .white), //<-- SEE HERE
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 30,
                                              ),
                                              Container(
                                                width: double.infinity,
                                                height: 60,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    border: Border.all(
                                                        width: 2,
                                                        color:
                                                            Color(0xFF303030))),
                                                child: ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      primary:
                                                          Color(0xFF303030),
                                                    ),
                                                    onPressed: () => {},
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Icon(Icons
                                                              .search_rounded),
                                                          Text(
                                                            "جستجو",
                                                            style: TextStyle(
                                                                fontSize: 17),
                                                          ),
                                                        ],
                                                      ),
                                                    )),
                                              )
                                            ]),
                                      ),
                                    ),
                                  ),
                                  elevation: 1,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              }),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.manage_search_outlined,
                                size: 40.0,
                                color: Color(0xFFFFAC47),
                              ),
                              Text(
                                "جستجو",
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xFFFFAC47),
                                    fontFamily: "IranSans"),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
