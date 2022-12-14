// import 'dart:html';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:penilaian_22/app/routes/app_pages.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  final controller = Get.put(RegisterController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: GetBuilder<RegisterController>(
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
                              controller: controller.name,
                              style: TextStyle(color: Colors.black),
                              cursorColor: Color(0xff35E0AD),
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff35E0AD)),
                                    borderRadius: BorderRadius.circular(10)),
                                labelText: "Username",
                                labelStyle: TextStyle(
                                    color: Color(0xff817F7F),
                                    fontFamily: "poppins-reg"),
                                border: OutlineInputBorder(),
                              )),
                        ),
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
                                labelStyle: TextStyle(
                                    color: Color(0xff817F7F),
                                    fontFamily: "poppins-reg"),
                                border: OutlineInputBorder(),
                              )),
                        ),
                        Container(
                          width: 350,
                          height: 40,
                          child: TextFormField(
                            controller: controller.password,
                              cursorColor: Color(0xff35E0AD),
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff35E0AD)),
                                    borderRadius: BorderRadius.circular(10)),
                                labelText: "Password",
                                labelStyle: TextStyle(
                                    color: Color(0xff817F7F),
                                    fontFamily: "poppins-reg"),
                                border: OutlineInputBorder(),
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 150,
                                height: 40,
                                child: TextFormField(
                                  controller: controller.status,
                                    cursorColor: Color(0xff35E0AD),
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xff35E0AD)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      labelText: "Status",
                                      labelStyle: TextStyle(
                                          color: Color(0xff817F7F),
                                          fontFamily: "poppins-reg"),
                                      border: OutlineInputBorder(),
                                    )),
                              ),
                              Container(
                                width: 150,
                                height: 40,
                                child: TextFormField(
                                  controller: controller.jenisKelamin,
                                    cursorColor: Color(0xff35E0AD),
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xff35E0AD)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      labelText: "Gender",
                                      labelStyle: TextStyle(
                                          color: Color(0xff817F7F),
                                          fontFamily: "poppins-reg"),
                                      border: OutlineInputBorder(),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 250,
                          height: 40,
                          margin: EdgeInsets.only(top: 30, bottom: 20),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff35E0AD),
                                shape: StadiumBorder()),
                            autofocus: false,
                            child: Text(
                              "Register",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 17,
                                  fontFamily: "poppins-sm"),
                            ),
                            onPressed: () => controller.tombolReg(),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "by signing up you agree to our terms data",
                              style: TextStyle(
                                  color: Color(0xff8E8E8E),
                                  fontSize: 11,
                                  fontFamily: "poppins-reg"),
                            ),
                            Text(
                              "policy and cookies policy",
                              style: TextStyle(
                                  color: Color(0xff8E8E8E),
                                  fontSize: 11,
                                  fontFamily: "poppins-reg"),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "have an account?",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontFamily: "poppins-reg"),
                              ),
                              TextButton(
                                  onPressed: () => Get.toNamed(Routes.LOGIN),
                                  child: Text(
                                    "Sign in",
                                    style: TextStyle(
                                        color: Color(0xff6D72E1),
                                        fontFamily: "poppins-reg"),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
