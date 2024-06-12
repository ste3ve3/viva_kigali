import 'package:cnevent/controller/organizercontroller.dart';
import 'package:cnevent/utils/admob_service.dart';
import 'package:cnevent/utils/appconstant.dart';
import 'package:cnevent/utils/backgrounddecoration.dart';
import 'package:cnevent/view/dashboard/widgets/eventlistcard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class OrganizerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Get.put(OrganizerController());
    return Container(
        decoration: backgroundDecoration(),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.black26,
            elevation: 0,
            iconTheme: const IconThemeData(color: Colors.white),
          ),
          bottomNavigationBar: SizedBox(
            height: 50.0,
            width: double.maxFinite,
            child: AdWidget(
                key: UniqueKey(), ad: AdMobService.createBannerAd()..load()),
          ),
          extendBodyBehindAppBar: true,
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Image.network(
                  "https://assets-api.kathmandupost.com/thumb.php?src=https://assets-cdn.kathmandupost.com/uploads/source/news/2023/third-party/prabesh-1672626501.jpg&w=900&height=601",
                  height: 200,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 150),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        elevation: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Nepal Organizer Community",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Text(
                                  dummy,
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          "Events",
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Obx(
                          () => Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  model.tabSelected.value = 0;
                                },
                                child: Card(
                                  color: model.tabSelected.value == 0
                                      ? appThemeColor
                                      : Colors.white12,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomLeft: Radius.circular(10))),
                                  margin: EdgeInsets.zero,
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 8.0, horizontal: 20),
                                    child: Text(
                                      "Upcoming",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  model.tabSelected.value = 1;
                                },
                                child: Card(
                                  color: model.tabSelected.value == 1
                                      ? appThemeColor
                                      : Colors.white12,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                          bottomRight: Radius.circular(10))),
                                  margin: EdgeInsets.zero,
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 8.0, horizontal: 20),
                                    child: Text(
                                      "Recent",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Obx(
                        () => ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          primary: false,
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          itemCount: model.relatedEventList.length,
                          itemBuilder: (context, index) {
                            final banner = model.relatedEventList[index];
                            return EventListCard(
                              banner,
                              () {
                                model.onEventClicked(banner);
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
