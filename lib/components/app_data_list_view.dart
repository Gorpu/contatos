import 'package:flutter/material.dart';
import 'package:leads/components/app_card.dart';
import 'package:leads/customer/Models/data/contatos_model.dart';

class AppDataListView extends StatelessWidget {
  const AppDataListView({super.key});

  @override
  Widget build(BuildContext context) {
    late ContatosModel contatosModel = ContatosModel();
    late var contatos = contatosModel.dataContactsModel(null);
    return ListView.builder(
      itemBuilder: (context, index) {
        final contato = contatos[index];
        String? nome = contato.name ?? contato.phone;
        List<String> tegs = contato.tags ?? [""];
        bool ligar = contato.calling ?? false;
        String visto = contato.lastSeen ?? "No records";
        return Padding(
          padding: EdgeInsets.only(bottom: 18),
          child: AppCard(
            nome: nome,
            ligar: ligar,
            tags: [...tegs],
            visto: visto,
          ),
        );
      },
    );
  }
}
