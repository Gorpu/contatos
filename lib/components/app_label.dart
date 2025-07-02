import 'package:flutter/material.dart';

class AppLabel extends StatelessWidget {
  final String? label;
  const AppLabel({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$label",
      style: TextStyle(
        fontFamily: "Gilroy",
        fontWeight: FontWeight.w600,
        fontSize: 32,
      ),
    );
  }
}
