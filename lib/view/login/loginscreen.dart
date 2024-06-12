import 'package:cnevent/common/widgets/custom_passwordfield.dart';
import 'package:cnevent/common/widgets/custom_textfield.dart';
import 'package:cnevent/controller/logincontroller.dart';
import 'package:cnevent/utils/appconstant.dart';
import 'package:cnevent/utils/backgrounddecoration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final form = GlobalKey<FormState>();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final model = Get.put(LoginController());
    return Container(
      decoration: backgroundDecoration(),
      child: Scaffold(
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
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 10),
                              child: Text(
                                "Welcome Back, Login",
                                style:
                                    TextStyle(color: Colors.black, fontSize: 20),
                              ),
                            ),
                            CustomTextField(
                                usernameController, "Email", TextFieldType.email),
                            const SizedBox(
                              height: 15,
                            ),
                            CustomPasswordField(passwordController, "Password"),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              alignment: Alignment.centerRight,
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
                                  model.onForgetPasswordClicked();
                                },
                                child: const Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                      color: appThemeColor, fontSize: 15),
                                ),
                              ),
                            ),
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
                                  model.onLoginClicked();
                                },
                                child: Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.all(15),
                                  child: const Center(
                                      child: Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  )),
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Don't have an account?  ",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      model.onRegisterClicked();
                                    },
                                    child: const Text(
                                      "Register ->",
                                      style: TextStyle(
                                          color: appThemeColor, fontSize: 15),
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
      ),
    );
  }
}
