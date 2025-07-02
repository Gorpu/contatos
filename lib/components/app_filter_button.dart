import 'package:flutter/material.dart';

class AppFilterButton extends StatefulWidget {
  final void Function()? onPressed;
  const AppFilterButton({super.key, required this.onPressed});

  @override
  State<AppFilterButton> createState() => _AppFilterButtonState();
}

class _AppFilterButtonState extends State<AppFilterButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Your Leads",
            style: TextStyle(
              fontFamily: "URWGeometric",
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Color.fromRGBO(110, 117, 130, 1),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
            ),
            onPressed: widget.onPressed,
            child: Text("FILTER"),
          ),
        ],
      ),
    );
  }
}
