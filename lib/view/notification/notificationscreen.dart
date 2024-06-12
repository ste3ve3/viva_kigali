import 'package:cnevent/controller/alleventcontroller.dart';
import 'package:cnevent/controller/noticationcontroller.dart';
import 'package:cnevent/utils/admob_service.dart';
import 'package:cnevent/utils/appconstant.dart';
import 'package:cnevent/utils/backgrounddecoration.dart';
import 'package:cnevent/view/dashboard/widgets/eventlistcard.dart';
import 'package:cnevent/view/dashboard/widgets/notificationlistcard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final model = Get.put(NotificationController());
    return Container(
      decoration: backgroundDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          title: const Text(
            "Notifications",
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Obx(
              () => Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  primary: false,
                  shrinkWrap: true,
                  itemCount: model.list.length,
                  itemBuilder: (context, index) {
                    final banner = model.list[index];
                    return NotificationListCard(
                      banner,
                      () {},
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
