import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:penilaian_22/app/routes/app_pages.dart';

import '../controllers/forgotpass_controller.dart';

class ForgotpassView extends GetView<ForgotpassController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: Container(
          margin: EdgeInsets.only(top: 80),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    Center(
                      child: Image.asset(
                        "f/lupa.png",
                        width: 300,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      child: Text(
                        "Trouble logging in?",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w500,
                            fontFamily: "poppins-sm"),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Column(
                    children: [
                      Text(
                        "Enter your email and we'll send you",
                        style: TextStyle(
                          color: Color(0xff8E8E8E),
                          fontSize: 15,
                          fontFamily: "poppins-reg"
                        ),
                      ),
                      Text(
                        "a link to get back into your account.",
                        style: TextStyle(
                          color: Color(0xff8E8E8E),
                          fontSize: 15,
                          fontFamily: "poppins-reg"
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: 350,
                        height: 40,
                        margin: EdgeInsets.only(bottom: 10),
                        child: TextFormField(
                            style: TextStyle(color: Colors.black),
                            cursorColor: Color(0xff35E0AD),
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff35E0AD)),
                                  borderRadius: BorderRadius.circular(10)),
                              labelText: "Email",
                              labelStyle: TextStyle(color: Color(0xff817F7F)),
                              border: OutlineInputBorder(),
                            )),
                      ),
                      Container(
                        width: 250,
                        height: 40,
                        margin: EdgeInsets.only(top: 20, bottom: 80),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff35E0AD),
                              shape: StadiumBorder()),
                          autofocus: false,
                          child: Text(
                            "Send login link",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 17,
                                fontFamily: "poppins-sm"),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 150,
                              height: 1,
                              margin: EdgeInsets.only(right: 5),
                              decoration:
                                  BoxDecoration(color: Color(0xff8E8E8E)),
                            ),
                            Text(
                              "OR",
                              style: TextStyle(
                                  color: Color(0xff8E8E8E), fontSize: 10),
                            ),
                            Container(
                              width: 150,
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
                          TextButton(
                              onPressed: () => Get.toNamed(Routes.REGISTER),
                              child: Text(
                                "Create new account",
                                style: TextStyle(color: Color(0xff6D72E1),
                                fontFamily: "poppins-reg"),
                              )),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          width: 400,
                          height: 50,
                          child: ElevatedButton(
                             style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(142, 142, 142, 142),
                                ),
                            autofocus: false,
                            onPressed: () => Get.toNamed(Routes.LOGIN),
                            child: Text("Back to login",style: TextStyle(
                              fontFamily: "poppins-reg"
                            ),),
                          )
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
