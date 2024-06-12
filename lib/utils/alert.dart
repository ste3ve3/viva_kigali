import 'package:cnevent/utils/appconstant.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

void showToast(String value) {
  Fluttertoast.showToast(
      msg: value,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 2,
      backgroundColor: Colors.white,
      textColor: Colors.black,
      fontSize: 16.0);
}

void openConfirmationDialog(IconData icon,
    String title, String message, String buttonText, VoidCallback function) {
  Get.dialog(
    AlertDialog(
      backgroundColor: appDarkColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 0,
      title: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              icon,
              color: Colors.white,
              size: 60,
            ),
          ),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
          ),
        ],
      ),
      content: Text(message,textAlign: TextAlign.center,style: const TextStyle(color: Colors.white),),
      actions: [
        TextButton(
          onPressed: function,
          child: Text(
            buttonText,
            style: const TextStyle(color: appThemeColor,fontSize: 18),
          ),
        ),
        TextButton(
          child: const Text(
            "Cancel",
            style: TextStyle(color: Colors.white,fontSize: 18),
          ),
          onPressed: () => Get.back(),
        ),
      ],
    ),
  );
}
