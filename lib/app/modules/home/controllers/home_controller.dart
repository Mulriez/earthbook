import 'dart:developer';

import 'package:get/get.dart';
import "../../../model/buku.dart";
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  //TODO: Implement HomeController
  List<Datum> buku = [];
  final count = 0.obs;
  Future get() async {
    Uri url = Uri.parse("https://teal-perfect-wasp.cyclic.app/mulya");

    try {
      final response =
          await http.get(url, headers: {"Content-Type": "application/json"});
      if (response.statusCode == 200) {
        Bukuu result = bukuuFromJson(response.body);
        buku = result.data;
        log("okokok");
      } else {
        log("gagal");
      }
    } catch (e) {
      log('Error while getting data is $e');
      print('Error while getting data is $e');
    }
  }

  @override
  void onInit() {
    get();
    log("message");
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
