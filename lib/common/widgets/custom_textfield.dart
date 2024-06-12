import 'package:flutter/material.dart';

enum TextFieldType { email, text, number, phone, date }

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final TextFieldType type;

  const CustomTextField(this.controller, this.title, this.type, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: const TextStyle(color: Colors.black),
      validator: (value) {
        /*if (value!.isEmpty) {
          return "$title is required";
        }

        if (type == TextFieldType.email) {
          final bool emailValid = RegExp(
                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
              .hasMatch(value);

          if (!emailValid) {
            return "Enter Valid Email";
          }
        }

        if (type == TextFieldType.phone || type == TextFieldType.number) {
          double? numeric = double.tryParse(value);

          if (numeric == null) {
            return "Enter a valid digit";
          }
        }*/
        return null;
      },
      keyboardType: type == TextFieldType.phone
          ? TextInputType.phone
          : type == TextFieldType.number
              ? TextInputType.number
              : type == TextFieldType.email
                  ? TextInputType.emailAddress
                  : type == TextFieldType.date
                      ? TextInputType.datetime
                      : TextInputType.text,
      onTapOutside: (PointerDownEvent event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      cursorColor: Colors.black,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
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
    );
  }
}
