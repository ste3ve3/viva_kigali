import 'package:cnevent/common/widgets/custom_read_only_textfield.dart';
import 'package:cnevent/common/widgets/custom_textfield.dart';
import 'package:cnevent/controller/addcardcontroller.dart';
import 'package:cnevent/utils/admob_service.dart';
import 'package:cnevent/utils/appconstant.dart';
import 'package:cnevent/utils/backgrounddecoration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AddCardScreen extends StatelessWidget {
  const AddCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final model = Get.put(AddCardController());
    return Container(
      decoration: backgroundDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          title: const Text(
            "Add Card",
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
          child: Card(
            elevation: 0,
            margin: const EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomTextField(model.cardHolderController,
                      "Card Holder Name", TextFieldType.email),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                      model.titleController, "Title", TextFieldType.text),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(model.numberController, "Card Number",
                      TextFieldType.number),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(model.dateController,
                      "Expire Date (e.g 12/12)", TextFieldType.date),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                      model.cvvController, "CVV", TextFieldType.number),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomReadOnlyTextField(model.cardTypeController, () {
                    model.showCardType();
                  }, "Select Card Type"),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: appThemeColor),
                      onPressed: () {},
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        child: const Center(
                            child: Text(
                          "Save Card",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
