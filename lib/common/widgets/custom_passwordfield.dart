import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomPasswordField extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  var showPassword = true.obs;

  CustomPasswordField(this.controller, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TextFormField(
        keyboardType: TextInputType.visiblePassword,
        obscureText: showPassword.value,
        controller: controller,
        style: const TextStyle(color: Colors.black),
        validator: (value) {
          /*if (value!.isEmpty) {
            return "$title is required";
          }*/
          return null;
        },
        onTapOutside: (PointerDownEvent event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        cursorColor: Colors.black,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            suffixIcon: GestureDetector(
              onTap: () {
                showPassword.toggle();
              },
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(
                  showPassword.value ? Icons.visibility : Icons.visibility_off,
                  color: Colors.black,
                ),
              ),
            ),
            hintText: title,
            hintStyle: const TextStyle(color: Colors.grey),
            filled: true,
            fillColor: Colors.white.withOpacity(.6),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.withOpacity(.5)),
                borderRadius: BorderRadius.circular(20)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.withOpacity(.5)),
                borderRadius: BorderRadius.circular(20)),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.withOpacity(.5)),
                borderRadius: BorderRadius.circular(20)),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.withOpacity(.5)),
                borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}
