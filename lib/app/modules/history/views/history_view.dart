import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:penilaian_22/app/routes/app_pages.dart';

import '../controllers/history_controller.dart';

class HistoryView extends GetView<HistoryController> {
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
                  Text("History",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Urbanist",
                          fontSize: 20)),
                ],
              ),
            ),
            body: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: 30, left: 15, right: 5, bottom: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "RECENTLY READ",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Poppins-reg",
                                color: Color(0xff35E0AD)),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Wrap(
                            spacing: width * 0.02,
                            children: List.generate(
                              7,
                              (index) => book2(width, height),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}

Widget book2(double width, double height) {
  return Row(
    children: [
      Container(
        margin: EdgeInsets.only(top: 10, left: 25),
        width: width * 0.9,
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color.fromARGB(118, 48, 36, 36)),
        child: Row(
          children: [
            Container(
              width: width * 0.24,
              height: 150,
              margin: EdgeInsets.only(top: 10, left: 10, right: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.black),
              child: Center(
                child: Text(
                  "BOOK",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            IntrinsicWidth(
              child: Container(
                margin: EdgeInsets.only(top: 40),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Text(
                          "SAINT PEGASUS",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: "Poppins-reg",
                              fontSize: 20),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Text(
                          "SAINT PEGASUS",
                          style: TextStyle(
                              fontSize: 12, fontFamily: "Poppins-reg"),
                        ),
                      ),
                    ),
                    Column(
                      children: [  
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: EdgeInsets.only(top: 60, bottom: 3),
                            child: Text("35% to compleate",
                            style: TextStyle(
                                fontSize: 10, fontFamily: "Poppins-reg"),
                            ),
                          ),
                        ),   
                        Container(
                          width: 230,
                          height: 10,
                          decoration: BoxDecoration(
                              color: Color(0xff35E0AD),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Align(
                alignment: Alignment.topRight,
                child: Container(
                    margin: EdgeInsets.only(top: 10, left: 10),
                    child: Icon(Icons.close, color: Colors.white))),
          ],
        ),
      ),
    ],
  );
}
