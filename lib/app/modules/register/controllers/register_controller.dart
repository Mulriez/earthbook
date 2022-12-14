import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:penilaian_22/app/routes/app_pages.dart';

class RegisterController extends GetxController {
  //TODO: Implement RegisterController
  final emailText = "Masukkan Email".obs;
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController status = TextEditingController();
  TextEditingController jenisKelamin = TextEditingController();

  Future tombolReg() async{
    log("Button Pressed");
    Uri url = Uri.parse("http://34.128.70.114/register");
    
    Map data = {
      "name" : name.text,
      "email" : email.text,
      "password" : password.text,
      "status" : "active",
      "jenisKelamin" : "laki-laki",
    };

    var body = json.encode(data);
    
    final response = await http.post(url,
        headers: {"Content-Type": "application/json"}, body: body);

    if (response.statusCode == 200) {
      log("Registrasi Berhasil");
      Get.toNamed(Routes.LOGIN);
      // Redirect ke dashboard / homepage
    } else {
      log(response.statusCode.toString());
      log(response.body.toString());
      log("Registrasi Gagal");
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
