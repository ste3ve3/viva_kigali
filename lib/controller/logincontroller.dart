import 'package:cnevent/view/dashboard/dashboardscreen.dart';
import 'package:cnevent/view/forgetpassword/forgetpasswordscreen.dart';
import 'package:cnevent/view/register/registerscreen.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  void onForgetPasswordClicked() {
    Get.to(ForgetPasswordScreen());
  }

  void onLoginClicked() {
    Get.offAll(const DashboardScreen());
  }

  void onRegisterClicked() {
    Get.to(RegisterScreen());
  }
}
