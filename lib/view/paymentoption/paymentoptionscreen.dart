import 'package:cnevent/controller/paymentoptioncontroller.dart';
import 'package:cnevent/utils/admob_service.dart';
import 'package:cnevent/utils/backgrounddecoration.dart';
import 'package:cnevent/view/addcard/addcardscreen.dart';
import 'package:cnevent/view/successpayment/successpaymentscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../utils/appconstant.dart';

class PaymentOptionScreen extends StatelessWidget {
  const PaymentOptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final model = Get.put(PaymentOptionController());
    return Container(
      decoration: backgroundDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          title: const Text(
            "Payment Options",
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
            child: Obx(
              () => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    elevation: 0,
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            maxLines: 2,
                            overflow: TextOverflow.fade,
                            "Summary Detail",
                            style: TextStyle(
                                color: appAlternateColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Standard Ticket",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                              Text(
                                "5",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Normal Ticket",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                              Text(
                                "1",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "VVIP Ticket",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                              Text(
                                "2",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              )
                            ],
                          ),
                          const Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                              Text(
                                "\$2000",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Promo",
                                style:
                                    TextStyle(color: Colors.red, fontSize: 15),
                              ),
                              Text(
                                "-\$50",
                                style:
                                    TextStyle(color: Colors.red, fontSize: 15),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "VAT",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                              Text(
                                "\$20",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
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
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                              Text(
                                "\$1970",
                                style: TextStyle(
                                    color: appThemeColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      maxLines: 2,
                      overflow: TextOverflow.fade,
                      "Payment Option",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      model.cardType.value = 0;
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    tileColor: Colors.white,
                    title: const Text(
                      "Mastercard",
                      style: TextStyle(color: Colors.black),
                    ),
                    subtitle: const Text(
                      "4510 **** **** ****",
                      style: TextStyle(color: Colors.grey),
                    ),
                    leading: const Icon(
                      Icons.payment,
                      color: Colors.black,
                    ),
                    trailing: model.cardType.value == 0
                        ? const Icon(
                            Icons.check,
                            color: Colors.black,
                          )
                        : null,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ListTile(
                    onTap: () {
                      model.cardType.value = 1;
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    tileColor: Colors.white,
                    title: const Text(
                      "Debit Card",
                      style: TextStyle(color: Colors.black),
                    ),
                    subtitle: const Text(
                      "4815 **** **** ****",
                      style: TextStyle(color: Colors.grey),
                    ),
                    leading: const Icon(
                      Icons.payment,
                      color: Colors.black,
                    ),
                    trailing: model.cardType.value == 1
                        ? const Icon(
                            Icons.check,
                            color: Colors.black,
                          )
                        : null,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ListTile(
                    onTap: () {
                      model.cardType.value = 2;
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    tileColor: Colors.white,
                    title: const Text(
                      "Paypal",
                      style: TextStyle(color: Colors.black),
                    ),
                    subtitle: const Text(
                      "5256 **** **** ****",
                      style: TextStyle(color: Colors.grey),
                    ),
                    leading: const Icon(
                      Icons.payment,
                      color: Colors.black,
                    ),
                    trailing: model.cardType.value == 2
                        ? const Icon(
                            Icons.check,
                            color: Colors.black,
                          )
                        : null,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: Colors.white12),
                      onPressed: () {
                        Get.to(const AddCardScreen());
                      },
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        child: const Center(
                            child: Text(
                          "Add Card",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: appThemeColor),
                      onPressed: () {
                        Get.offAll(SuccessPaymentScreen());
                      },
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        child: const Center(
                            child: Text(
                          "Checkout",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
