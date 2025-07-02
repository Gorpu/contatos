import "package:flutter/material.dart";
import "package:leads/components/app_card.dart";
import "package:leads/components/app_filter_button.dart";
import "package:leads/components/app_icon_search.dart";
import "package:leads/components/app_label.dart";
import "package:leads/customer/Models/data/contatos_model.dart";
import "package:leads/customer/leads_view_model.dart";

class LeadsView extends StatefulWidget {
  const LeadsView({super.key});

  @override
  State<LeadsView> createState() => _LeadsViewState();
}

class _LeadsViewState extends State<LeadsView> {
  late ContatosModel contatosModel = ContatosModel();
  late var contatos = contatosModel.dataContactsModel();

  LeadsViewModel view = LeadsViewModel();
  bool mostrarList = false;
  String? contactName;
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
                    view.filterSearchAction(value);
                  },
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.024),
              child: AppFilterButton(
                onPressed: () {
                  setState(() {
                    mostrarList = true;
                  });
                },
              ),
            ),
            if (mostrarList)
              Expanded(
                child: ListView.builder(
                  itemCount: contatos.length,
                  itemBuilder: (context, index) {
                    final contato = contatos[index];
                    String? nome = contato.name ?? contato.phone;
                    List<String> tegs = contato.tags ?? [""];
                    bool ligar = contato.calling ?? false;
                    String visto = contato.lastSeen ?? "No records";
                    return Padding(
                      padding: EdgeInsets.only(bottom: size.height * 0.018),
                      child: AppCard(
                        nome: nome,
                        ligar: ligar,
                        tags: [...tegs],
                        visto: visto,
                      ),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
