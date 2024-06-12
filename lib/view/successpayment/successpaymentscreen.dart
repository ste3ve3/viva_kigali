import 'package:cnevent/utils/admob_service.dart';
import 'package:cnevent/utils/appconstant.dart';
import 'package:cnevent/utils/backgrounddecoration.dart';
import 'package:cnevent/view/dashboard/dashboardscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class SuccessPaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    AdMobService().loadRewardAd();
    return Container(
      decoration: backgroundDecoration(),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        bottomNavigationBar: SizedBox(
          height: 50.0,
          width: double.maxFinite,
          child: AdWidget(
              key: UniqueKey(),
              ad: AdMobService.createBannerAd()..load()),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/payment.png",
                  width: 300,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Payment Successful",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    textAlign: TextAlign.center,
                    "Your transaction was successful, your ticket will be be transfered to you into your account.",
                    style: TextStyle(color: Colors.white70, fontSize: 15),
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        backgroundColor: appThemeColor),
                    onPressed: () {
                      Get.off(const DashboardScreen());
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      child: const Center(
                          child: Text(
                        "Continue Exploring",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )),
                    )),
                GestureDetector(
                  onTap: () {
                    Get.off(const DashboardScreen(),arguments: {"page":2});
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      textAlign: TextAlign.center,
                      "Go to My Ticket ->",
                      style: TextStyle(color: Colors.white, fontSize: 15),
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
