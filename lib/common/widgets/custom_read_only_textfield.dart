import 'package:flutter/material.dart';

class CustomReadOnlyTextField extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onPressed;
  final String label;

  const CustomReadOnlyTextField(this.controller, this.onPressed,this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: true,
      onTap: () => onPressed(),
      controller: controller,
      style: const TextStyle(color: Colors.black),
      onTapOutside: (PointerDownEvent event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      cursorColor: Colors.white,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          hintText: label,
          hintStyle: const TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.white,
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
