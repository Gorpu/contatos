import 'package:flutter/material.dart';

class AppTransparentButton extends StatefulWidget {
  final void Function()? onPressed;
  final String text;
  const AppTransparentButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  State<AppTransparentButton> createState() => _AppTransparentButtonState();
}

class _AppTransparentButtonState extends State<AppTransparentButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Text(widget.text),
    );
  }
}
