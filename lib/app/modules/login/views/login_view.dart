import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:penilaian_22/app/routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xffFFFFFFF),
          body: GetBuilder<LoginController>(
            builder: (controller) => Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Center(
                          child: Image.asset(
                            "f/baca.png",
                            width: 500,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 40),
                          child: Image.asset("f/EarthBook.png", width: 250),
                        )
                      ],
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            width: 350,
                            height: 40,
                            margin: EdgeInsets.only(bottom: 15),
                            child: TextFormField(
                                controller: controller.email,
                                style: TextStyle(color: Colors.black),
                                cursorColor: Color(0xff35E0AD),
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xff35E0AD)),
                                      borderRadius: BorderRadius.circular(10)),
                                  labelText: "Email",
                                  labelStyle:
                                      TextStyle(color: Color(0xff817F7F)),
                                  border: OutlineInputBorder(),
                                )),
                          ),
                          Container(
                            width: 350,
                            height: 40,
                            child: TextFormField(
                                controller: controller.password,
                                cursorColor: Color(0xff35E0AD),
                                obscureText: true,
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xff35E0AD)),
                                      borderRadius: BorderRadius.circular(10)),
                                  labelText: "Password",
                                  labelStyle:
                                      TextStyle(color: Color(0xff817F7F)),
                                  border: OutlineInputBorder(),
                                )),
                          ),
                          Container(
                              width: 350,
                              margin: EdgeInsets.only(top: 5),
                              child: IntrinsicWidth(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: TextButton(
                                        onPressed: () =>
                                            Get.toNamed(Routes.FORGOTPASS),
                                        autofocus: false,
                                        child: Text(
                                          "Forgot password?",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xff6D72E1),
                                              fontStyle: FontStyle.italic,
                                              fontFamily: "poppins-reg"),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          Container(
                            width: 250,
                            height: 40,
                            margin: EdgeInsets.only(top: 5, bottom: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30)),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff35E0AD),
                                  shape: StadiumBorder()),
                              child: Text(
                                "Log in",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900, fontSize: 20),
                              ),
                              onPressed: () => controller.tombolLogin(), 
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Don't have an account?",
                                  style: TextStyle(
                                      color: Color(0xff817F7F),
                                      fontFamily: "poppins-reg"),
                                ),
                                TextButton(
                                    onPressed: () =>
                                        Get.toNamed(Routes.REGISTER),
                                    child: Text(
                                      "Sign up",
                                      style: TextStyle(
                                          color: Color(0xffE74040),
                                          fontFamily: "poppins-reg"),
                                    )),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 50,
                                  height: 1,
                                  margin: EdgeInsets.only(right: 5),
                                  decoration:
                                      BoxDecoration(color: Color(0xff8E8E8E)),
                                ),
                                Text(
                                  "Or Log in with",
                                  style: TextStyle(
                                      color: Color(0xff8E8E8E), fontSize: 10),
                                ),
                                Container(
                                  width: 50,
                                  height: 1,
                                  margin: EdgeInsets.only(left: 5),
                                  decoration:
                                      BoxDecoration(color: Color(0xff8E8E8E)),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Color(0xff35E0AD),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Image.asset("f/fb.png")),
                              ),
                              Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0xff35E0AD),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.asset("f/gugel.png")),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Color(0xff35E0AD),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Icon(
                                    Icons.apple,
                                    color: Color(0xffFFFFFF),
                                    size: 30,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
