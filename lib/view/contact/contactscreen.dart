import 'package:cnevent/utils/admob_service.dart';
import 'package:cnevent/utils/appconstant.dart';
import 'package:cnevent/utils/backgrounddecoration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class ContactScreen extends StatelessWidget {
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
            "Contact Us",
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                elevation: 0,
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Organization Name",
                        style: TextStyle(
                            color: appAlternateColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Viva Kigali",
                        style: TextStyle(
                            color: appAlternateColor,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Address",
                        style: TextStyle(
                            color: appAlternateColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "KN 167 ST, Kigali, House No 22",
                        style: TextStyle(
                            color: appAlternateColor,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Reception Info",
                        style: TextStyle(
                            color: appAlternateColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Booking: (+250) 788 619 790",
                        style: TextStyle(
                            color: appAlternateColor,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Ticket Info",
                        style: TextStyle(
                            color: appAlternateColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        """Phone : (+250) 788 619 790
Email : vivakigali@mail.com""",
                        style: TextStyle(
                            color: appAlternateColor,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Location",
                      style:
                      TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      "Open Map",
                      style: TextStyle(
                          color: appThemeColor,
                          fontSize: 15,
                          decoration: TextDecoration.underline,
                          decorationColor: appThemeColor,
                          decorationStyle: TextDecorationStyle.solid),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    "https://aroundodisha.com/wp-content/uploads/2021/02/google-map.png",
                    fit: BoxFit.cover,
                    width: Get.size.width,
                    height: 250,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
