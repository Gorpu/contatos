import "package:flutter/material.dart";
import "package:leads/components/app_card.dart";
import "package:leads/customer/Models/data/contatos_model.dart";

class AppContactsList extends StatefulWidget {
  final List<Map<String, dynamic>>? contatos;
  const AppContactsList({super.key, this.contatos});

  @override
  State<AppContactsList> createState() => _AppContactsListState();
}

class _AppContactsListState extends State<AppContactsList> {
  @override
  Widget build(BuildContext context) {
    final contatosModel = ContatosModel();
    final contatos = contatosModel.dataContactsModel(value: null);
    return SizedBox(
      height: MediaQuery.of(context).size.height - 45,
      child: ListView.builder(
        itemCount: contatos.length,
        itemBuilder: (context, index) {
          final contato = contatos[index];
          String? nome = contato.nameContact ?? contato.phone;
          List<String> tegs = contato.tags ?? [""];
          bool ligar = contato.calling ?? false;
          String visto = contato.lastSeen ?? "No records";
          return AppCard(
            nome: nome,
            ligar: ligar,
            tags: [...tegs],
            visto: visto,
          );
        },
      ),
    );
  }
}
