import 'package:cnevent/view/login/loginscreen.dart';
import 'package:cnevent/view/success/successscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordController extends GetxController {
  void onSubmitClicked() {
    Get.offAll(SuccessScreen(Icons.check_circle, "Password Reset",
        "Password reset successful. Please Login", "Login", () {
      Get.offAll(LoginScreen());
    }));
  }
}
