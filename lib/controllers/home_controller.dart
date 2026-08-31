import 'package:get/get.dart';
import 'package:flutter/material.dart';
class HomeController extends GetxController {
  RxInt count = 0.obs;

  void increment() {
    count++;

    Get.snackbar(
      "Success",
      "Value Increases by ${count.value}",
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      colorText: Colors.white,

    );

  }

  void decrement() {
    count--;
    Get.snackbar(
      "Success",
      "Value Decreases by ${count.value}",
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.red,
      colorText: Colors.white,
    );

  }
}
