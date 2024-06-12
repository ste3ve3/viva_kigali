import 'package:cnevent/controller/settingcontroller.dart';
import 'package:cnevent/utils/appconstant.dart';
import 'package:cnevent/view/contact/contactscreen.dart';
import 'package:cnevent/view/dashboard/widgets/settingcard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final model = Get.put(SettingController());
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.asset(
                          personImage,
                          width: 120,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15.0),
                        child: Text(
                          "Steve Ndicunguye",
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 1,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 1.0),
                        child: Text(
                          "adamsmith@gmail.com",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 5),
                  child: Text(
                    "User Settings",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SettingCard(Icons.person, "Edit Profile", () {
                  model.onEditProfileClicked();
                }),
                SettingCard(Icons.lock, "Change Password", () {
                  model.onChangePasswordClicked();
                }),
                SettingCard(Icons.payment, "Payment Card", () {
                  model.onPaymentMethodClicked();
                }),
                SettingCard(Icons.favorite, "Favorites", () {
                  model.onFavoriteClicked();
                }),
                const Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 5),
                  child: Text(
                    "General Settings",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SettingCard(Icons.contact_support, "Contact Us", () {
                  Get.to(ContactScreen());
                }),
                SettingCard(Icons.account_box_outlined, "About Us", () {
                  model.onStaticContentClicked(Content.about_us);
                }),
                SettingCard(Icons.policy, "Privacy Policy", () {
                  model.onStaticContentClicked(Content.privacy);
                }),
                SettingCard(Icons.star_rate, "Rate Us", () {
                  model.onRateUsClicked();
                }),
                const Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 5),
                  child: Text(
                    "Other Settings",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SettingCard(Icons.notifications, "Push Notification", () {
                  model.onPushNotificationClicked();
                }),
                SettingCard(Icons.logout_rounded, "Log Out", () {
                  model.onLogOutClicked();
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
