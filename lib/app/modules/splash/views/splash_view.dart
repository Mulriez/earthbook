

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  var controller = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
            children: [
              Container(
                child:
                  Align(
                    alignment: Alignment.topRight,
                    child: Image.asset("f/atas.png")
                  )
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 48),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Earth", style: TextStyle(
                          fontFamily: "Poppins-sm",
                          fontWeight: FontWeight.bold,
                          fontSize: 70
                        ),),
                        Text("Book", style: TextStyle(
                          fontFamily: "Poppins-sm",
                          fontWeight: FontWeight.bold,
                          fontSize: 70,
                          color: Color(0xff35E0AD)
                        ),)
                      ],
                    ),
                  )
                )
              ),
               Container(
                child:
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Image.asset("f/bawah.png",
                    height: 300,)
                  )
              ),
            ],
          ),
        ),
    );
  }
}
