import 'package:cnevent/common/widgets/custom_passwordfield.dart';
import 'package:cnevent/utils/admob_service.dart';
import 'package:cnevent/utils/appconstant.dart';
import 'package:cnevent/utils/backgrounddecoration.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class ChangePasswordScreen extends StatelessWidget {
  final confirmPasswordController = TextEditingController();
  final oldPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();

  ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: backgroundDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          title: const Text(
            "Change Password",
            style: TextStyle(color: Colors.white),
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 50.0,
          width: double.maxFinite,
          child: AdWidget(
              key: UniqueKey(),
              ad: AdMobService.createBannerAd()..load()),
        ),
        body: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          margin: const EdgeInsets.all(20),
          elevation: 0,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomPasswordField(oldPasswordController, "Old Password"),
                const SizedBox(
                  height: 15,
                ),
                CustomPasswordField(newPasswordController, "New Password"),
                const SizedBox(
                  height: 15,
                ),
                CustomPasswordField(confirmPasswordController, "Confirm Password"),
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
                        "Change Password",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
