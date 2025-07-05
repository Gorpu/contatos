import 'package:flutter/material.dart';

class AppLabel extends StatelessWidget {
  final String? label;
  final double fontSize;
  const AppLabel({super.key, required this.label, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$label",
      style: TextStyle(
        fontFamily: "Gilroy",
        fontWeight: FontWeight.w600,
        fontSize: fontSize,
      ),
    );
  }
}
