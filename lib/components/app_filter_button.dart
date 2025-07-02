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
    return Row(
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
        TextButton(
          onPressed: widget.onPressed,
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text("FILTER"),
        ),
      ],
    );
  }
}
