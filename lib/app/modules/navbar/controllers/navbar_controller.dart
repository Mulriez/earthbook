import 'package:get/get.dart';

class NavbarController extends GetxController {
  //TODO: Implement NavbarController
  final count = 0.obs;
  var tabIndex = 0;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
  
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
