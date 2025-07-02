import "package:flutter/material.dart";
import "package:leads/components/app_contacts_list.dart";
import "package:leads/components/app_filter_button.dart";
import "package:leads/components/app_icon_search.dart";
import "package:leads/components/app_label.dart";
import "package:leads/customer/leads_view_model.dart";

class LeadsView extends StatefulWidget {
  const LeadsView({super.key});

  @override
  State<LeadsView> createState() => _LeadsViewState();
}

class _LeadsViewState extends State<LeadsView> {
  LeadsViewModel view = LeadsViewModel();
  bool mostrarList = false;
  String? contactName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppIconSearch(
                onChanged: (value) {
                  contactName = value;
                  view.filterSearchAction(value);
                },
              ),
              AppLabel(label: "Leads"),
              AppFilterButton(
                onPressed: () {
                  setState(() {
                    mostrarList = !mostrarList;
                  });
                },
              ),
              if (mostrarList)
                AppContactsList(
                  contatos: view.filterSearchAction(contactName ?? ""),
                ),
              AppContactsList(),
            ],
          ),
        ),
      ),
    );
  }
}
