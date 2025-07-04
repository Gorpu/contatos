import 'package:leads/customer/Models/data/contatos_model.dart';

class LeadsViewModel {
  final contatosModel = ContatosModel();

  String nome = "";
  List<Map<String, dynamic>>? filterSearchAction(String value) {
    List<ContatosModel> data = contatosModel.dataContactsModel(value: value);

    nome = value;
    if (data.any((value) => value.nameContact == nome)) {
      return data
          .where((item) => item.nameContact == value)
          .map(
            (contato) => {
              "name": contato.nameContact,
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
