import 'package:flutter/material.dart';

class AppPhoneIconTrue extends StatelessWidget {
  final bool? telefonar;
  const AppPhoneIconTrue({super.key, required this.telefonar});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color:
            (telefonar ?? false)
                ? const Color.fromARGB(255, 240, 239, 237)
                : Colors.grey.shade100,
      ),
      child:
          (telefonar ?? false)
              ? Icon(Icons.phone, size: 20, color: Colors.black54)
              : Icon(Icons.phone, size: 20, color: Colors.grey.shade300),
    );
  }
}
