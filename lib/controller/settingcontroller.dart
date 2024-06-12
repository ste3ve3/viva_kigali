// import 'package:cnevent/utils/admob_service.dart';
import 'package:cnevent/utils/alert.dart';
import 'package:cnevent/view/allevents/alleventscreen.dart';
import 'package:cnevent/view/cardpaymentlist/cardpaymentlistscreen.dart';
import 'package:cnevent/view/changepassword/changepasswordscreen.dart';
import 'package:cnevent/view/content/contentscreen.dart';
import 'package:cnevent/view/editprofile/editprofilescreen.dart';
import 'package:cnevent/view/login/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:in_app_review/in_app_review.dart';

enum Content { about_us, contact_us, privacy }

class SettingController extends GetxController {
  void onEditProfileClicked() {
    Get.to(EditProfileScreen());
  }

  void onChangePasswordClicked() {
    Get.to(ChangePasswordScreen());
  }

  void onPaymentMethodClicked() {
    Get.to(CardPaymentListScreen());
  }

  void onStaticContentClicked(Content content) {
    Get.to(ContentScreen(), arguments: {"mode": content});
  }

  Future<void> onRateUsClicked() async {
    final InAppReview inAppReview = InAppReview.instance;

    if (await inAppReview.isAvailable()) {
    inAppReview.requestReview();
    }else{

    }
  }

  void onPushNotificationClicked(){

  }

  void onFavoriteClicked(){
    Get.to(AllEventScreen());
  }

  void onLogOutClicked(){
    openConfirmationDialog(Icons.logout,"Log Out", "Are you sure you want to log out?", "Log Out", () {
      Get.offAll(LoginScreen());
    });
  }

  // @override
  // void onInit() {
  //   AdMobService.createInterstitialAd();
  //   AdMobService.showInterstitialAd();
  //   super.onInit();
  // }
}
