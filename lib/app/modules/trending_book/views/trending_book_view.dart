import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:penilaian_22/app/routes/app_pages.dart';

import '../controllers/trending_book_controller.dart';

class TrendingBookView extends GetView<TrendingBookController> {
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
            Text("Trending",
                style: TextStyle(
                    color: Colors.white, fontFamily: "Urbanist", fontSize: 20)),
            Text("Book",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Urbanist",
                    fontSize: 20,
                    fontWeight: FontWeight.w500))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 5),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Wrap(
                      spacing: width * 0.01,
                      children: List.generate(
                        12,
                        (index) => book(width, height),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: TextButton(
                          onPressed: () => Get.toNamed(Routes.NAVBAR),
                          child: Text("Load More"),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

Widget book(double width, double height) {
  return Column(
    children: [
      Container(
        width: width * 0.3,
        height: 200,
        margin: EdgeInsets.only(top: 10, left: 5, right: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.black),
        child: Center(
          child: Text(
            "BOOK",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(
          top: 10,
        ),
        child: Text(
          "SAINT PEGASUS",
          style:
              TextStyle(fontWeight: FontWeight.w600, fontFamily: "Poppins-reg"),
        ),
      ),
      Container(
        child: Text(
          "SAINT PEGASUS",
          style: TextStyle(
              fontSize: 10,
              color: Color(0xff8E8E8E),
              fontFamily: "Poppins-reg"),
        ),
      ),
    ],
  );
}
