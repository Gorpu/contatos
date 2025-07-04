import 'package:flutter/material.dart';

class AppBox extends StatelessWidget {
  final String? nameContact;
  final void Function(String)? onChanged;
  final void Function()? confirmAction;

  const AppBox({
    super.key,
    required this.nameContact,
    required this.onChanged,
    required this.confirmAction,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width - 46,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Search Contact",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
            child: TextField(
              onChanged: onChanged,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1),
                ),
                hintText: "Contact here",
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //
              TextButton(onPressed: confirmAction, child: Text("CLOSE")), //
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("SEARCH"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
