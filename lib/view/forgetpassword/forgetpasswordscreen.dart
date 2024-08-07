import 'package:cnevent/common/widgets/custom_textfield.dart';
import 'package:cnevent/controller/forgetpasswordcontroller.dart';
import 'package:cnevent/utils/appconstant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen extends StatelessWidget {
  final usernameController = TextEditingController();
  final form = GlobalKey<FormState>();

  ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final model = Get.put(ForgetPasswordController());
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
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
                child: SingleChildScrollView(
                  child: Card(
                    elevation: 0,
                    color: Colors.white,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
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
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "Forgot Password",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "Enter your email address to reset your password and set a new password for your account.",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomTextField(
                              usernameController, "Email", TextFieldType.email),
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
                                model.onSubmitClicked();
                              },
                              child: Container(
                                width: double.infinity,
                                padding: const EdgeInsets.all(15),
                                child: const Center(
                                    child: Text(
                                  "Submit",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                )),
                              ))
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
