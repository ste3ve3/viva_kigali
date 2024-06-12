import 'package:cnevent/utils/appconstant.dart';
import 'package:cnevent/utils/backgrounddecoration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class EditProfileController extends GetxController {
  var genderType = "Gender".obs;

  final emailController = TextEditingController();
  final usernameController = TextEditingController();
  final fullNameController = TextEditingController();
  final dateOfBirthController = TextEditingController();
  final genderController = TextEditingController();

  void showGenderType(){
    Get.bottomSheet(
      elevation: 0,
      backgroundColor: appDarkColor,
      Obx(
        () => Container(
          decoration: backgroundDecoration(),
            width: Get.size.width,
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Choose Gender', style: TextStyle(color: Colors.white,fontSize: 20),),
                ),
                ListTile(
                  iconColor: Colors.white,
                  title: const Text("Female",style: TextStyle(color: Colors.white)),
                  trailing: genderType.value == "Female"?const Icon(Icons.check):null,
                  onTap: () {
                    genderType.value = "Female";
                    genderController.text = "Female";
                  },
                ),
                ListTile(
                  iconColor: Colors.white,
                  title: const Text("Male",style: TextStyle(color: Colors.white)),
                  trailing: genderType.value == "Male"?const Icon(Icons.check):null,
                  onTap: () {
                    genderType.value = "Male";
                    genderController.text = "Male";
                  },
                ),
                ListTile(
                  iconColor: Colors.white,
                  title: const Text("Other",style: TextStyle(color: Colors.white)),
                  trailing: genderType.value == "Other"?const Icon(Icons.check):null,
                  onTap: () {
                    genderType.value = "Other";
                    genderController.text = "Other";
                  },
                ),
              ],
            )
        ),
      ),
      barrierColor: Colors.transparent,
      isDismissible: true,
      enableDrag: true
    );
  }

  showDatePickers() async {
    DateTime? pickedDate = await showDatePicker(
        context: Get.context!,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        //DateTime.now() - not to allow to choose before today.
        lastDate: DateTime(2100));

    if (pickedDate != null) {
      //pickedDate output format => 2021-03-10 00:00:00.000
      String formattedDate =
      DateFormat('yyyy-MM-dd').format(pickedDate);
      dateOfBirthController.text = formattedDate; //set output date to TextField value.
      }
  }

  @override
  void onInit() {
    genderController.text = "";
    dateOfBirthController.text = "";
    super.onInit();
  }
}
