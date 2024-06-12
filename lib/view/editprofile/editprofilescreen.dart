import 'package:cnevent/common/widgets/custom_read_only_textfield.dart';
import 'package:cnevent/common/widgets/custom_textfield.dart';
import 'package:cnevent/controller/editprofilecontroller.dart';
import 'package:cnevent/utils/admob_service.dart';
import 'package:cnevent/utils/appconstant.dart';
import 'package:cnevent/utils/backgrounddecoration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class EditProfileScreen extends StatelessWidget {
  final emailController = TextEditingController();
  final usernameController = TextEditingController();
  final fullnameController = TextEditingController();

  EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final model = Get.put(EditProfileController());
    return Container(
      decoration: backgroundDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: SizedBox(
          height: 50.0,
          width: double.maxFinite,
          child: AdWidget(
              key: UniqueKey(),
              ad: AdMobService.createBannerAd()..load()),
        ),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          title: const Text(
            "Edit Profile",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Column(
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Stack(
                      children: [
                        Image.asset(
                          personImage,
                          width: 120,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 0,
                          child: GestureDetector(
                            onTap: () {

                            },
                            child: Container(
                              width: 120,
                              height: 50,
                              color: Colors.black45,
                              child: const Center(
                                  child: Text(
                                "Edit",
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  elevation: 0,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        CustomTextField(model.emailController, "Email", TextFieldType.email),
                        const SizedBox(
                          height: 15,
                        ),
                        CustomTextField(model.usernameController, "Username", TextFieldType.text),
                        const SizedBox(
                          height: 15,
                        ),
                        CustomTextField(model.fullNameController, "Fullname", TextFieldType.text),
                        const SizedBox(
                          height: 15,
                        ),
                        CustomReadOnlyTextField(model.dateOfBirthController, () {
                          model.showDatePickers();
                        },"Date of Birth"),
                        const SizedBox(
                          height: 15,
                        ),
                        CustomReadOnlyTextField(model.genderController, () {
                          model.showGenderType();
                        },"Gender"),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                backgroundColor: appThemeColor),
                            onPressed: () {},
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(20),
                              child: const Center(
                                  child: Text(
                                    "Save Details",
                                    style: TextStyle(color: Colors.white, fontSize: 15),
                                  )),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
