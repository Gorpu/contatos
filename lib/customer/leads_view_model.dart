import 'package:leads/data/data_contacts.dart';

class LeadsViewModel {
  String nome = "";

  List<Map<String, dynamic>>? filterSearchAction(String value) {
    List<Map<String, dynamic>> data = dataContacts();

    nome = value;
    if (data.any((item) => item["name"] == value)) {
      return data.where((item) => item["name"] == value).toList();
    } else {
      return null;
    }
  }
}
