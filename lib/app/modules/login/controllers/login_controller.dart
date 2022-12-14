import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:penilaian_22/app/routes/app_pages.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
  final emailText = "Masukkan Email".obs;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Future tombolLogin() async{
    log("Button Pressed");
    Uri url = Uri.parse("http://34.128.70.114/login");
    
    Map data = {
      "email" : email.text,
      "password" : password.text
    };

    var body = json.encode(data);
    
    final response = await http.post(url,
        headers: {"Content-Type": "application/json"}, body: body);

    if (response.statusCode == 200) {
      log("berhasil login");
      Get.toNamed(Routes.NAVBAR);
      // Redirect ke dashboard / homepage
    } else {
      log(response.statusCode.toString());
      log(response.body.toString());
      log("gagal login");
      // munculkan pesan error
    }
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
