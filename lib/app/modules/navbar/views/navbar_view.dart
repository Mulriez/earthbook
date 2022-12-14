import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:penilaian_22/app/modules/account/views/account_view.dart';
import 'package:penilaian_22/app/modules/category/views/category_view.dart';
import 'package:penilaian_22/app/modules/history/views/history_view.dart';
import 'package:penilaian_22/app/modules/home/views/home_view.dart';
import 'package:penilaian_22/app/modules/library/views/library_view.dart';
import 'package:penilaian_22/app/modules/trending_book/views/trending_book_view.dart';

import '../controllers/navbar_controller.dart';
import "package:google_nav_bar/google_nav_bar.dart";

class NavbarView extends GetView<NavbarController> {
  var controller = Get.put(NavbarController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(
      child: GetBuilder<NavbarController>(builder: (controller) {
        return Scaffold(
          extendBody: true,
          body: Stack(
            children: [
              IndexedStack(
                index: controller.tabIndex,
                children: [
                  HomeView(),
                  LibraryView(),
                  HistoryView(),
                  AccountView()
                ],
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight:  Radius.circular(20)),
                    child: GNav(
                      duration: Duration(milliseconds: 200),
                      backgroundColor: Color(0xff35E0AD),
                      tabMargin: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
                      activeColor: Colors.white,
                      iconSize: 25,
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      curve: Curves.fastOutSlowIn,
                      onTabChange: controller.changeTabIndex,
                      selectedIndex: controller.tabIndex,
                      tabs: [
                        _customGButton(icon: CupertinoIcons.home),
                        _customGButton(icon: CupertinoIcons.bookmark),
                        _customGButton(icon: CupertinoIcons.clock),
                        _customGButton(icon: CupertinoIcons.person_crop_circle),
                      ],
                    )
                  ),
                ),
              )
            ],
          ),
        );
      }),
    ));
  }
}

_customGButton({required IconData icon}){
  return GButton(icon: icon,);
}