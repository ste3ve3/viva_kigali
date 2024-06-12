import 'package:cnevent/utils/admob_service.dart';
import 'package:cnevent/utils/appconstant.dart';
import 'package:cnevent/utils/backgrounddecoration.dart';
import 'package:cnevent/view/paymentoption/paymentoptionscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class BuyTicketScreen extends StatelessWidget {
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
            "Buy Ticket",
            style: TextStyle(color: Colors.white),
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 50.0,
          width: double.maxFinite,
          child: AdWidget(
              key: UniqueKey(), ad: AdMobService.createBannerAd()..load()),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 120,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: InkWell(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Row(
                        children: [
                          Image.network(
                            width: 120,
                            height: 120,
                            "https://c8.alamy.com/comp/2B1XFB6/audience-crowd-people-raise-hands-enjoy-live-music-festival-concert-event-2B1XFB6.jpg",
                            fit: BoxFit.cover,
                          ),
                          Expanded(
                            child: Container(
                              color: Colors.white,
                              padding: const EdgeInsets.all(15),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    maxLines: 2,
                                    overflow: TextOverflow.fade,
                                    "Nel Ngabo Album launch with KINA Music",
                                    style: TextStyle(
                                        color: appAlternateColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              color: appThemeColor,
                                              size: 15,
                                            ),
                                            Text(
                                              maxLines: 1,
                                              " Kigali Arena",
                                              style: TextStyle(
                                                  color: appThemeColor,
                                                  fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Icon(
                                              Icons.timelapse,
                                              color: appAlternateColor,
                                              size: 15,
                                            ),
                                            Text(
                                              maxLines: 1,
                                              textAlign: TextAlign.end,
                                              " 2024-12-30",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    maxLines: 2,
                    overflow: TextOverflow.fade,
                    "Ticket Option",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                ListView(
                  primary: false,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      tileColor: Colors.white,
                      title: const Text(
                        "Normal Ticket (\$20)",
                        style: TextStyle(color: Colors.black),
                      ),
                      subtitle: const Text(
                        "Ticket will contain no drinks or facilties",
                        style: TextStyle(color: Colors.grey),
                      ),
                      leading: const Icon(
                        Icons.airplane_ticket_outlined,
                        color: Colors.black,
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Card(
                              shape: CircleBorder(),
                              elevation: 0,
                              color: appThemeColor,
                              child: SizedBox(
                                width: 40,
                                height: 40,
                                child: Center(
                                    child: Text("-",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18))),
                              )),
                          SizedBox(
                              width: 60,
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                onTapOutside: (PointerDownEvent event) {
                                  FocusManager.instance.primaryFocus?.unfocus();
                                },
                                textAlign: TextAlign.center,
                                cursorColor: Colors.black,
                                maxLength: 2,
                                decoration: InputDecoration(
                                    counterText: "",
                                    alignLabelWithHint: true,
                                    hintText: "1",
                                    hintStyle:
                                        const TextStyle(color: Colors.grey),
                                    filled: true,
                                    fillColor: Colors.black.withOpacity(.07),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.transparent),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.transparent),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.transparent),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    errorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.transparent),
                                        borderRadius:
                                            BorderRadius.circular(20))),
                              )),
                          const Card(
                              shape: CircleBorder(),
                              elevation: 0,
                              color: appThemeColor,
                              child: SizedBox(
                                width: 40,
                                height: 40,
                                child: Center(
                                    child: Text("+",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18))),
                              )),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      tileColor: Colors.white,
                      title: const Text(
                        "Standard Ticket (\$200)",
                        style: TextStyle(color: appThemeColor),
                      ),
                      subtitle: const Text(
                        "Ticket contains drinks only",
                        style: TextStyle(color: Colors.grey),
                      ),
                      leading: const Icon(
                        Icons.airplane_ticket_outlined,
                        color: Colors.black,
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Card(
                              shape: CircleBorder(),
                              elevation: 0,
                              color: appThemeColor,
                              child: SizedBox(
                                width: 40,
                                height: 40,
                                child: Center(
                                    child: Text("-",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18))),
                              )),
                          SizedBox(
                              width: 60,
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                onTapOutside: (PointerDownEvent event) {
                                  FocusManager.instance.primaryFocus?.unfocus();
                                },
                                textAlign: TextAlign.center,
                                cursorColor: Colors.black,
                                maxLength: 2,
                                decoration: InputDecoration(
                                    counterText: "",
                                    alignLabelWithHint: true,
                                    hintText: "1",
                                    hintStyle:
                                        const TextStyle(color: Colors.grey),
                                    filled: true,
                                    fillColor: Colors.black.withOpacity(.07),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.transparent),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.transparent),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.transparent),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    errorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.transparent),
                                        borderRadius:
                                            BorderRadius.circular(20))),
                              )),
                          const Card(
                              shape: CircleBorder(),
                              elevation: 0,
                              color: appThemeColor,
                              child: SizedBox(
                                width: 40,
                                height: 40,
                                child: Center(
                                    child: Text("+",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18))),
                              )),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      tileColor: Colors.white,
                      title: const Text(
                        "VIP Ticket (\$2000)",
                        style: TextStyle(color: Colors.green),
                      ),
                      subtitle: const Text(
                        "Ticket contains drink hotel stay",
                        style: TextStyle(color: Colors.grey),
                      ),
                      leading: const Icon(
                        Icons.airplane_ticket_outlined,
                        color: Colors.black,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Card(
                              shape: CircleBorder(),
                              elevation: 0,
                              color: appThemeColor,
                              child: SizedBox(
                                width: 40,
                                height: 40,
                                child: Center(
                                    child: Text("-",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18))),
                              )),
                          SizedBox(
                              width: 60,
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                onTapOutside: (PointerDownEvent event) {
                                  FocusManager.instance.primaryFocus?.unfocus();
                                },
                                textAlign: TextAlign.center,
                                cursorColor: Colors.black,
                                maxLength: 2,
                                decoration: InputDecoration(
                                    counterText: "",
                                    alignLabelWithHint: true,
                                    hintText: "1",
                                    hintStyle:
                                        const TextStyle(color: Colors.grey),
                                    filled: true,
                                    fillColor: Colors.black.withOpacity(.07),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.transparent),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.transparent),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.transparent),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    errorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.transparent),
                                        borderRadius:
                                            BorderRadius.circular(20))),
                              )),
                          const Card(
                              shape: CircleBorder(),
                              elevation: 0,
                              color: appThemeColor,
                              child: SizedBox(
                                width: 40,
                                height: 40,
                                child: Center(
                                    child: Text("+",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18))),
                              )),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    maxLines: 2,
                    overflow: TextOverflow.fade,
                    "Promo Code",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            onTapOutside: (PointerDownEvent event) {
                              FocusManager.instance.primaryFocus?.unfocus();
                            },
                            style: const TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(15),
                                alignLabelWithHint: true,
                                hintText: "Promo Code",
                                hintStyle: const TextStyle(color: Colors.grey),
                                filled: true,
                                fillColor: Colors.white.withOpacity(.07),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.transparent),
                                    borderRadius: BorderRadius.circular(20)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.transparent),
                                    borderRadius: BorderRadius.circular(20)),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.transparent),
                                    borderRadius: BorderRadius.circular(20)),
                                errorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.transparent),
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: appThemeColor,
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)))),
                            onPressed: () {},
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 5),
                              child: Text(
                                "Apply",
                                style: TextStyle(color: Colors.white),
                              ),
                            ))
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        maxLines: 2,
                        overflow: TextOverflow.fade,
                        "Payment Detail",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            "\$2000",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Promo",
                            style: TextStyle(color: Colors.red, fontSize: 15),
                          ),
                          Text(
                            "-\$50",
                            style: TextStyle(color: Colors.red, fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "VAT",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            "\$20",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          )
                        ],
                      ),
                      Divider(
                        color: Colors.grey.withOpacity(.5),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Grand Total",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            "\$1970",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        backgroundColor: appThemeColor),
                    onPressed: () {
                      Get.to(PaymentOptionScreen());
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(15),
                      child: const Center(
                          child: Text(
                        "Proceed Payment",
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
