import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:penilaian_22/app/model/buku.dart';
import 'package:penilaian_22/app/routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final controller = Get.put(HomeController());
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
            actions: <Widget>[
              Image.asset(
                "f/src.png",
              )
            ],
            title: Row(
              children: [
                Text("Earth",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Urbanist",
                        fontSize: 20)),
                Text("Book",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Urbanist",
                        fontSize: 20,
                        fontWeight: FontWeight.w500))
              ],
            ),
          ),
          body: GetBuilder<HomeController>(
            builder: ((controller) => Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 70),
                          width: width * 0.9,
                          height: height * 0.3,
                          decoration: BoxDecoration(
                              color: Color(0xff35E0AD),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text(
                              "BANNER",
                              style: TextStyle(
                                fontSize: 60,
                                fontFamily: "Poppins-sm",
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 30, left: 10, right: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "CATEGORY",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: "Poppins-reg",
                                    color: Color(0xff35E0AD)),
                              ),
                              TextButton(
                                onPressed: () => Get.toNamed(Routes.CATEGORY),
                                autofocus: false,
                                child: Text(
                                  "See all",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff6D72E1),
                                      fontFamily: "poppins-reg"),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Wrap(
                                spacing: width * 0.001,
                                children: List.generate(
                                  4,
                                  (index) => card(width, height),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 40, left: 10, right: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "TRENDING BOOK",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: "Poppins-reg",
                                    color: Color(0xff35E0AD)),
                              ),
                              TextButton(
                                onPressed: () =>
                                    Get.toNamed(Routes.TRENDING_BOOK),
                                autofocus: false,
                                child: Text(
                                  "See all",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff6D72E1),
                                      fontFamily: "poppins-reg"),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Wrap(
                                spacing: width * 0.001,
                                children: List.generate(
                                  4,
                                  (index) {
                                    return book(
                                        width: 1,
                                        height: 1,
                                        data: controller.buku[index].img);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: 30, left: 15, right: 5, bottom: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "RECOMMENDED BOOK",
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
                )),
          )),
    );
  }
}

Widget card(double width, double height) {
  return Container(
    width: width * 0.4,
    height: 100,
    margin: EdgeInsets.only(top: 10, left: 5, right: 5),
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

Widget book({double? width, double? height, final data}) {
  return Column(
    children: [
      Container(
          width: width! * 0.3,
          height: height,
          margin: EdgeInsets.only(top: 10, left: 5, right: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.black,
            image: DecorationImage(
              image: NetworkImage(data.Image),
            ),
          ),
          child: Center(
            child: Text(
              "BOOK",
              style: TextStyle(color: Colors.white),
            ),
          )),
      Container(
        margin: EdgeInsets.only(top: 20),
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
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                            margin: EdgeInsets.only(top: 30),
                            child: Row(
                              children: [
                                Text("4.7"),
                                Icon(
                                  Icons.star,
                                  size: 15,
                                  color: Colors.orange,
                                ),
                              ],
                            ))),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
