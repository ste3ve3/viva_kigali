import 'package:cnevent/controller/paymentmethodcontroller.dart';
import 'package:cnevent/model/cardpayment.dart';
import 'package:cnevent/utils/admob_service.dart';
import 'package:cnevent/utils/appconstant.dart';
import 'package:cnevent/utils/backgrounddecoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class CardPaymentListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Get.put(PaymentMethodController());
    return Container(
      decoration: backgroundDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          title: const Text(
            "Payment Cards",
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
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            backgroundColor: appThemeColor,
            elevation: 0,
            onPressed: () {
              model.onAddNewCardClicked();
            },
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
        body: Card(
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
            child: Obx(
              () => ListView.builder(
                itemCount: model.cardList.length,
                itemBuilder: (context, index) {
                  final card = model.cardList[index];
                  return Card(
                    elevation: 0,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    color: card.type == CardType.debit
                        ? debitCard
                        : card.type == CardType.credit
                            ? creditCard
                            : card.type == CardType.mastercard
                                ? masterCard
                                : paypalCard,
                    child: Slidable(
                      endActionPane: ActionPane(
                        extentRatio: .3,
                        motion: const ScrollMotion(),
                        children: [
                          SlidableAction(
                            borderRadius: const BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)),
                            padding: const EdgeInsets.all(0),
                            onPressed: (context) {},
                            autoClose: true,
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white,
                            icon: Icons.delete,
                            label: "Delete Card",
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Image.asset(
                            "assets/images/globe.png",
                            color: Colors.black12,
                          ),
                          Container(
                            margin: EdgeInsets.zero,
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Text(card.title,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          letterSpacing: 2,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/sim.png",
                                      width: 65,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(
                                      "assets/images/nfc.png",
                                      width: 30,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Center(
                                    child: Text(card.cardNumber,
                                        textAlign: TextAlign.justify,
                                        style: const TextStyle(
                                            fontFamily: "CreditCard",
                                            color: Colors.white,
                                            fontSize: 18,
                                            letterSpacing: 3,
                                            fontWeight: FontWeight.normal)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(card.cardholder,
                                          style: const TextStyle(
                                              color: Colors.white54,
                                              fontSize: 18,
                                              letterSpacing: 3,
                                              fontWeight: FontWeight.bold)),
                                      Text(card.date,
                                          style: const TextStyle(
                                              color: Colors.white54,
                                              fontSize: 18,
                                              letterSpacing: 3,
                                              fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
