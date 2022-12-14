import 'package:get/get.dart';

import '../controllers/trending_book_controller.dart';

class TrendingBookBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TrendingBookController>(
      () => TrendingBookController(),
    );
  }
}
