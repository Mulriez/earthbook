import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:penilaian_22/app/routes/app_pages.dart';

import '../controllers/library_controller.dart';

class LibraryView extends GetView<LibraryController> {
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
              Text("Library",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Urbanist",
                      fontSize: 20)),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Library",
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: "Poppins-reg",
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Wrap(
                        spacing: width * 0.01,
                        children: List.generate(
                          9,
                          (index) => book(width, height),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget book(double width, double height) {
  return Column(
    children: [
      Container(
        width: width * 0.3,
        height: 200,
        margin: EdgeInsets.only(top: 15, left: 5, right: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.black),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.bookmark,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Text(
                "BOOK",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 10),
        child: Text(
          "SAINT PEGASUS",
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: "Poppins-reg",
              fontSize: 17),
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
