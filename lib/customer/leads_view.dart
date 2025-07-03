import "package:flutter/material.dart";
import "package:leads/components/app_data_list_view.dart";
import "package:leads/components/app_filter_button.dart";
import "package:leads/components/app_icon_search.dart";
import "package:leads/components/app_label.dart";

class LeadsView extends StatefulWidget {
  const LeadsView({super.key});

  @override
  State<LeadsView> createState() => _LeadsViewState();
}

class _LeadsViewState extends State<LeadsView> {
  String contactName = "";
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: size.width * 0.06,
          right: size.width * 0.06,
          top: size.height * 0.05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppLabel(label: "Leads"),
                AppIconSearch(
                  onChanged: (value) {
                    contactName = value;
                  },
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.024),
              child: AppFilterButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: Text(
                          "Função em desenvolvimento",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: "URWGeometric",
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            Expanded(child: AppDataListView()),
          ],
        ),
      ),
    );
  }
}
