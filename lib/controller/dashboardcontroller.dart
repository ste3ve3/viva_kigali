import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  var selected = 0.obs;
  final pageController = PageController();

  void onNavChanged(int value) {
    pageController.animateToPage(value,
        duration: const Duration(milliseconds: 1), curve: Curves.linear);
  }


  @override
  void onReady() {
    if(Get.arguments!=null){
      selected.value = Get.arguments["page"] ?? 0;
      onNavChanged(selected.value);
    }
    super.onReady();
  }
}
