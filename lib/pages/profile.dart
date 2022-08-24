import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jojo/controller/profileController.dart';
import 'package:jojo/pages/login.dart';

class ProfileScreen extends StatelessWidget {
  final controlller = Get.put(Profile());

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(255, 0, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  width: Get.width,
                  height: Get.height / 3,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: 3,
                                  color: Color(0xFF707070),
                                ),
                                borderRadius: BorderRadius.circular(150)),
                            child: Padding(
                              padding: const EdgeInsets.all(3),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(150),
                                child: Image.asset("assets/images/profile.png"),
                              ),
                            ),
                          )
                          // child:
                          ),
                      Align(
                        // alignment: Alignment.bottomRight,
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 40,
                          height: 40,
                          margin: EdgeInsets.only(right: 70, bottom: 10),
                          decoration: BoxDecoration(
                            color: Color(0xFFD1D1D1),
                            borderRadius: BorderRadius.circular(150),
                          ),
                          child: Icon(
                            Icons.add_a_photo_outlined,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "عزیز خوش آمدی",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "ویکاو",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10),
                      width: Get.width,
                      height: Get.height / 17,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFF707070)),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: Obx(
                          () => DropdownButtonHideUnderline(
                            child: DropdownButton(
                              style: TextStyle(color: Colors.white),
                              dropdownColor: Color(0xFF333132),
                              value: controlller.dropdownvalue.value,
                              icon: const Icon(Icons.keyboard_arrow_down),
                              items: controlller.items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(
                                    items,
                                  ),
                                );
                              }).toList(),
                              onChanged: (newdata) {
                                if (newdata == "+") {
                                  print("add panel");
                                  // Fluttertoast.showToast(msg: "msg");
                                  // Get.off(LoginScreen());
                                } else {
                                  Get.defaultDialog(
                                    title: "هشدار",
                                    titleStyle: TextStyle(color: Colors.white),
                                    content: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.question_mark_outlined,
                                          size: 35.0,
                                          color: Colors.red,
                                        ),
                                        SizedBox(
                                          height: 20.0,
                                        ),
                                        Text(
                                          "آیا از تغییر پنل خود مطمئن هستید ؟",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    backgroundColor: Color(0xFF333132),
                                    textCancel: "لغو",
                                    textConfirm: "مطمئنم !",
                                    cancelTextColor: Colors.white,
                                    confirmTextColor: Colors.white,
                                    buttonColor: Color(0xFF666666),
                                    onConfirm: () {
                                      Get.back(closeOverlays: true);

                                      controlller.setDropDownvalue(newdata);
                                    },
                                  );
                                }
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: InkWell(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 10),
                        width: Get.width,
                        height: Get.height / 17,
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
                                  Icons.info_outline,
                                  color: Color(0xFF01ACF8),
                                  size: 25,
                                ),
                                Text(
                                  "راهنمایی میخوام",
                                  style: TextStyle(
                                      fontSize: 17.0, color: Colors.white),
                                )
                              ]),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: InkWell(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 10),
                        width: Get.width,
                        height: Get.height / 17,
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
                                  Icons.vpn_key_outlined,
                                  color: Color(0xFFFFAC47),
                                  size: 25,
                                ),
                                Text(
                                  "تغییر رمز",
                                  style: TextStyle(
                                      fontSize: 17.0, color: Colors.white),
                                )
                              ]),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: InkWell(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 10),
                        width: Get.width,
                        height: Get.height / 17,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFF707070)),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/vikav.png",
                                  width: 25,
                                  height: 25,
                                ),
                                Text(
                                  "درباره ویکاو",
                                  style: TextStyle(
                                      fontSize: 17.0, color: Colors.white),
                                )
                              ]),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: InkWell(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 10),
                        width: Get.width,
                        height: Get.height / 17,
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
                                  Icons.logout_outlined,
                                  color: Colors.red,
                                  size: 25,
                                ),
                                Text(
                                  "خروج از حساب کاربری",
                                  style: TextStyle(
                                      fontSize: 17.0, color: Colors.white),
                                )
                              ]),
                        ),
                      ),
                      onTap: () => {
                        Get.defaultDialog(
                            title: "توجه",
                            middleText:
                                "آیا از خروج از حساب کاربری خود مطمئنید ؟ ",
                            middleTextStyle: TextStyle(color: Colors.white),
                            titleStyle: TextStyle(color: Colors.white),
                            textCancel: "لغو کردن",
                            textConfirm: "انجام بده",
                            buttonColor: Color.fromARGB(61, 78, 78, 78),
                            cancelTextColor: Colors.red,
                            confirmTextColor: Colors.green,
                            backgroundColor: Color(0xFF333132),
                            onConfirm: () {
                              Get.off(LoginScreen());
                            })
                      },
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Text("نسخه ی 1.0.0",
                    style: TextStyle(fontSize: 17, color: Colors.white)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("ایران",
                        style: TextStyle(fontSize: 17, color: Colors.red)),
                    SizedBox(
                      width: 5,
                    ),
                    Text("ساخته شده با عشق در ",
                        style: TextStyle(fontSize: 17, color: Colors.white)),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            )
          ],
        ));
  }
}
