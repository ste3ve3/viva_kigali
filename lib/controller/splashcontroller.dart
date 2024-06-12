import 'dart:async';

import 'package:cnevent/view/boarding/boardingscreen.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Timer(const Duration(seconds: 2), () {
      Get.offAll(BoardingScreen(),
          transition: Transition.circularReveal,
          duration: const Duration(seconds: 2));
    });
    super.onInit();
  }
}
