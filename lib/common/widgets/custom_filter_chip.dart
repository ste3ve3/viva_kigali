import 'package:cnevent/utils/appconstant.dart';
import 'package:flutter/material.dart';

class CustomFilterClip extends StatelessWidget {
  final String label;

  const CustomFilterClip(this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Chip(
          side: BorderSide.none,
          backgroundColor: appThemeColor,
          label: Text(label, style: const TextStyle(color: Colors.white)),
          elevation: 0,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)))),
    );
  }
}
