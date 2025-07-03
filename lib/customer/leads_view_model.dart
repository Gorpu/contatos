import 'package:leads/customer/Models/data/contatos_model.dart';

class LeadsViewModel {
  final contatosModel = ContatosModel();

  String nome = "";
  List<Map<String, dynamic>>? filterSearchAction(String value) {
    List<ContatosModel> data = contatosModel.dataContactsModel(value);

    nome = value;
    if (data.any((value) => value.name == nome)) {
      return data
          .where((item) => item.name == value)
          .map(
            (contato) => {
              "name": contato.name,
              "phone": contato.phone,
              "tags": contato.tags,
              "calling": contato.calling,
              "lastSeen": contato.lastSeen,
            },
          )
          .toList();
    } else {
      return null;
    }
  }
}
