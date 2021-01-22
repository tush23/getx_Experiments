import 'package:get/get.dart';

class CategoriesController extends GetxController {
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    
  }
  @override
  void onClose() {}
  void increment() => count.value++;
}
