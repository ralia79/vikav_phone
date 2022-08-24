import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var widthBase = MediaQuery.of(context).size.width;
    var heightBase = MediaQuery.of(context).size.height;

    return WillPopScope(
      onWillPop: () async {
        Fluttertoast.cancel();
        Fluttertoast.showToast(msg: "لطفا وارد شوید");
        return false;
      },
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.black,
          body: Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
              bottom: 10.0,
              left: 15.0,
              right: 15.0,
            ),
            child: Container(
                child: Column(
              children: [
                Container(
                  width: widthBase,
                  height: heightBase * 0.3,
                  // color: Colors.red,
                  child: Center(
                    child: Container(
                      width: widthBase * 0.45,
                      child: Image.asset("assets/images/vikav.png"),
                    ),
                  ),
                ),
                Container(
                  width: widthBase,
                  height: heightBase * 0.32,
                  // color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: widthBase,
                          height: 150.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17.0),
                              color: Color(0xFF303030)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0,
                                right: 20.0,
                                top: 10.0,
                                bottom: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                TextField(
                                  // controller: UsernameControler,
                                  textAlign: TextAlign.right,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'نام کاربری',
                                    hintStyle: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.white,
                                      fontFamily: "IranSans",
                                    ),
                                  ),
                                ),
                                Container(
                                  width: heightBase,
                                  height: 1,
                                  color: Color(0xFF434141),
                                ),
                                TextFormField(
                                  // controller: PasswordControler,
                                  obscureText: true,
                                  textAlign: TextAlign.right,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'رمز عبور',
                                    hintStyle: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.white,
                                      fontFamily: "IranSans",
                                    ),
                                  ),
                                  onChanged: ((value) {}),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: widthBase,
                          height: 60.0,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFFFF8C00),
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(18.0),
                              ),
                            ),
                            child: true
                                ? Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "ورود با اثر انگشت",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "IranSans",
                                            fontSize: 15.0),
                                      ),
                                      Icon(
                                        Icons.fingerprint_rounded,
                                        color: Colors.black,
                                        size: 40.0,
                                      )
                                    ],
                                  )
                                : Text(
                                    "ورود",
                                    style: TextStyle(
                                        fontFamily: "IranSans",
                                        fontSize: 17.0,
                                        color: Colors.black),
                                  ),
                            onPressed: () {
                              // isFinger ? _getFinger() : EnterWithPass();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )),
          ),
        ),
      ),
    );
  }
}
