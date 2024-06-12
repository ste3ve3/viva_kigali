import 'package:cnevent/view/dashboard/dashboardscreen.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  void onRegisterClicked() {
    Get.offAll(const DashboardScreen());
  }
}
