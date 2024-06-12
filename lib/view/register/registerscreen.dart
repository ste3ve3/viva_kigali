import 'package:cnevent/common/widgets/custom_passwordfield.dart';
import 'package:cnevent/common/widgets/custom_textfield.dart';
import 'package:cnevent/controller/registercontroller.dart';
import 'package:cnevent/utils/appconstant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final form = GlobalKey<FormState>();

  RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final model = Get.put(RegisterController());
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Form(
        key: form,
        child: Stack(
          children: [
            Image.asset(boardingImage,
                height: Get.size.height * .5,
                width: double.infinity,
                fit: BoxFit.cover),
            Container(
              color: Colors.black.withOpacity(.5),
              height: Get.size.height * .5,
              width: double.infinity,
            ),
            SafeArea(
              child: Center(
                child: Card(
                  elevation: 0,
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                appIcon,
                                height: 80,
                                width: 80,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 15),
                            child: Text(
                              "Join Community",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 24),
                            ),
                          ),
                          CustomTextField(
                              usernameController, "Name", TextFieldType.text),
                          const SizedBox(
                            height: 15,
                          ),
                          CustomTextField(
                              emailController, "Email", TextFieldType.email),
                          const SizedBox(
                            height: 15,
                          ),
                          CustomPasswordField(passwordController, "Password"),
                          const SizedBox(
                            height: 15,
                          ),
                          CustomPasswordField(
                              confirmPasswordController, "Confirm Password"),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  backgroundColor: appThemeColor),
                              onPressed: () {
                                if (!form.currentState!.validate()) {
                                  return;
                                }
                                model.onRegisterClicked();
                              },
                              child: Container(
                                width: double.infinity,
                                padding: const EdgeInsets.all(15),
                                child: const Center(
                                    child: Text(
                                  "Register",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                )),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
