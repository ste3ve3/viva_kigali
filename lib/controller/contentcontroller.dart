import 'package:cnevent/controller/settingcontroller.dart';
import 'package:get/get.dart';

class ContentController extends GetxController {
  var title = "".obs;

  @override
  void onInit() {
    Content mode = Get.arguments["mode"];
    setTitle(mode);
    super.onInit();
  }

  void setTitle(Content mode) {
    switch (mode) {
      case Content.privacy:
        {
          title.value = "Privacy Policy";
        }
      case Content.about_us:
        {
          title.value = "About Us";
        }
      case Content.contact_us:
        {
          title.value = "Contact Us";
        }
    }
  }
}
