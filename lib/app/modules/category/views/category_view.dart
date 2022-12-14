import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:penilaian_22/app/routes/app_pages.dart';

import '../controllers/category_controller.dart';

class CategoryView extends GetView<CategoryController> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xff35E0AD),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            TextButton(
                style: ButtonStyle(
                  alignment: Alignment.centerLeft,
                ),
                onPressed: () => Get.toNamed(Routes.NAVBAR),
                child: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 25,
                  color: Colors.white,
                )),
            Text("Category",
                style: TextStyle(
                    color: Colors.white, fontFamily: "Urbanist", fontSize: 20)),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Center(
              child: Wrap(
                spacing: width * 0.01,
                children: List.generate(
                  10,
                  (index) => card(width, height),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

Widget card(double width, double height) {
  return Container(
    width: width * 0.4,
    height: 100,
    margin: EdgeInsets.only(top: 25, left: 5, right: 5),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15), color: Colors.black),
    child: Center(
      child: Text(
        "ITEM",
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}
