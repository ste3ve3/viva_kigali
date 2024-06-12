import 'package:cnevent/utils/appconstant.dart';
import 'package:cnevent/utils/backgrounddecoration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddCardController extends GetxController {
  var cardType = "Select Card Type".obs;

  final cardHolderController = TextEditingController();
  final titleController = TextEditingController();
  final numberController = TextEditingController();
  final dateController = TextEditingController();
  final cvvController = TextEditingController();
  final cardTypeController = TextEditingController();

  void showCardType(){
    Get.bottomSheet(
      elevation: 0,
      backgroundColor: appDarkColor,
      Obx(
        () => Container(
            width: Get.size.width,
            decoration: backgroundDecoration(),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Choose Payment Type', style: TextStyle(color: Colors.white,fontSize: 20),),
                ),
                ListTile(
                  iconColor: Colors.white,
                  title: const Text("Debit Card",style: TextStyle(color: Colors.white)),
                  trailing: cardType.value == "Debit Card"?const Icon(Icons.check):null,
                  onTap: () {
                    cardType.value = "Debit Card";
                    cardTypeController.text = "Debit Card";
                  },
                ),
                ListTile(
                  iconColor: Colors.white,
                  title: const Text("Credit Card",style: TextStyle(color: Colors.white)),
                  trailing: cardType.value == "Credit Card"?const Icon(Icons.check):null,
                  onTap: () {
                    cardType.value = "Credit Card";
                    cardTypeController.text = "Credit Card";
                  },
                ),
                ListTile(
                  iconColor: Colors.white,
                  title: const Text("Mastercard",style: TextStyle(color: Colors.white)),
                  trailing: cardType.value == "Mastercard"?const Icon(Icons.check):null,
                  onTap: () {
                    cardType.value = "Mastercard";
                    cardTypeController.text = "Mastercard";
                  },
                ),
                ListTile(
                  iconColor: Colors.white,
                  title: const Text("Paypal",style: TextStyle(color: Colors.white)),
                  trailing: cardType.value == "Paypal"?const Icon(Icons.check):null,
                  onTap: () {
                    cardType.value = "Paypal";
                    cardTypeController.text = "Paypal";
                  },
                ),
              ],
            )
        ),
      ),
      barrierColor: Colors.transparent,
      isDismissible: true,
      enableDrag: true
    );
  }
}
