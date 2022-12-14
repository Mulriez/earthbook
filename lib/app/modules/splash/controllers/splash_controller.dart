import 'dart:async';

import 'package:get/get.dart';
import 'package:penilaian_22/app/routes/app_pages.dart';

class SplashController extends GetxController {
  startSplashScreen() {
    var duration = Duration(seconds: 3);
    return Timer(duration, () {
      Get.toNamed(Routes.LOGIN);
    });
  }

  final count = 0.obs;
  @override
  void onInit() {
    startSplashScreen();
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
