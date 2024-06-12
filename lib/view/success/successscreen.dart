import 'package:cnevent/utils/admob_service.dart';
import 'package:cnevent/utils/appconstant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class SuccessScreen extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String buttonTitle;
  final VoidCallback onPressed;

  const SuccessScreen(
      this.icon, this.title, this.subtitle, this.buttonTitle, this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      bottomNavigationBar: SizedBox(
        height: 50.0,
        width: double.maxFinite,
        child: AdWidget(
            key: UniqueKey(),
            ad: AdMobService.createBannerAd()..load()),
      ),
      body: Stack(
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
                          child: Icon(
                            icon,
                            size: 80,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            title,
                            style: const TextStyle(
                                color: Colors.black, fontSize: 24),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            subtitle,
                            style: const TextStyle(
                                color: Colors.black, fontSize: 15),
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
                            onPressed: () => onPressed(),
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(20),
                              child: Center(
                                  child: Text(
                                buttonTitle,
                                style: const TextStyle(
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
    );
  }
}
