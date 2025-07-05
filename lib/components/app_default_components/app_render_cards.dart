import 'package:flutter/material.dart';
import 'package:leads/components/app_default_components/app_card_componets/app_card.dart';
import 'package:leads/customer/Models/data/contatos_model.dart';

class AppRenderCards {
  static Widget cardsApp(BuildContext context, int index, String? nameContact) {
    try {
      final contatosModel = ContatosModel();
      final contatos = contatosModel.dataContactsModel(value: nameContact);

      final contato = contatos[index];
      final String? nome = contato.nameContact ?? contato.phone;
      final List<String> tegs = contato.tags ?? [""];
      final bool ligar = contato.calling ?? false;
      final String visto = contato.lastSeen ?? "No records";

      return Padding(
        padding: const EdgeInsets.only(bottom: 18),
        child: AppCard(nome: nome, ligar: ligar, tags: [...tegs], visto: visto),
      );
    } catch (e) {
      return Text("Ocorreu um erro aqui no AppListComponents $e");
    }
  }

  static int lengthAllData(String? value) {
    return ContatosModel().dataContactsModel(value: value).length;
  }
}
