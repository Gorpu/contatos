import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final double size;
  final double width;
  final double height;
  const AppText({
    super.key,
    required this.text,
    this.size = 16,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Text(
        text,
        style: TextStyle(
          fontFamily: "URWGeometric",
          fontWeight: FontWeight.w600,
          fontSize: size,
          color: Color.fromRGBO(110, 117, 130, 1),
        ),
      ),
    );
  }
}
