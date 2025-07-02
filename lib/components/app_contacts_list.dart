import "package:flutter/material.dart";
import "package:leads/components/app_card.dart";
import "package:leads/data/data_contacts.dart";

class AppContactsList extends StatefulWidget {
  final List<Map<String, dynamic>>? contatos;
  const AppContactsList({super.key, this.contatos});

  @override
  State<AppContactsList> createState() => _AppContactsListState();
}

class _AppContactsListState extends State<AppContactsList> {
  @override
  Widget build(BuildContext context) {
    final contatos = dataContacts();
    return SizedBox(
      height: MediaQuery.of(context).size.height - 45,
      child: ListView.builder(
        itemCount: contatos.length,
        itemBuilder: (context, index) {
          String nome = contatos[index]["name"] ?? contatos[index]["phone"];
          bool ligar = contatos[index]["calling"];
          String visto = contatos[index]["lastSeen"];
          return AppCard(nome: nome, ligar: ligar, visto: visto);
        },
      ),
    );
  }
}
