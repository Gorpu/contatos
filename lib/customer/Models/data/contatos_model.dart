class ContatosModel {
  String? name;
  String? phone;
  List<String>? tags;
  bool? calling;
  String? lastSeen;
  ContatosModel({
    this.name,
    this.phone,
    this.tags,
    this.calling,
    this.lastSeen,
  });
  List<ContatosModel> dataContactsModel(String? value) {
    List<Map<String, dynamic>> listContatos = [
      {
        "name": "Test lead for dB",
        "phone": null,
        "tags": ["3sigma", "New Lead", "Warm"],
        "calling": true,
        "lastSeen": "3 weeks ago",
      },
      {
        "name": "vivek",
        "phone": null,
        "tags": ["3sigma", "New Lead", "Warm"],
        "calling": true,
        "lastSeen": "3 weeks ago",
      },
      {
        "name": "Dristha Msg91",
        "phone": null,
        "tags": ["3sigma", "New Lead"],
        "calling": false,
        "lastSeen": "3 weeks ago",
      },
      {
        "name": "Sandy Bhai",
        "phone": null,
        "tags": ["3sigma", "New Lead"],
        "calling": true,
        "lastSeen": "3 weeks ago",
      },
      {
        "name": null,
        "phone": "+911161196371",
        "tags": ["3sigma", "New Lead"],
        "calling": true,
        "lastSeen": "3 weeks ago",
      },
      {
        "name": null,
        "phone": "+911206824456",
        "tags": ["3sigma", "New Lead"],
        "calling": true,
        "lastSeen": "3 weeks ago",
      },
    ];
    if (value == null) {
      return listContatos.map((item) {
        return ContatosModel(
          name: item["name"],
          phone: item["phone"],
          tags: item["tags"],
          calling: item["calling"],
          lastSeen: item["lastSeen"],
        );
      }).toList();
    }
    return listContatos
        .where((item) {
          final name = item["name"];
          return name != null &&
              name.toLowerCase().contains(value.toLowerCase());
        })
        .map((item) {
          return ContatosModel(
            name: item["name"],
            phone: item["phone"],
            tags: item["tags"],
            calling: item["calling"],
            lastSeen: item["lastSeen"],
          );
        })
        .toList();
  }

  List<Map<String, dynamic>> dataContactsSearch() {
    return [
      {
        "name": "Test lead for dB",
        "phone": null,
        "calling": true,
        "lastSeen": "3 weeks ago",
      },
      {
        "name": "vivek",
        "phone": null,
        "calling": true,
        "lastSeen": "3 weeks ago",
      },
      {
        "name": "Dristha Msg91",
        "phone": null,
        "calling": false,
        "lastSeen": "3 weeks ago",
      },
      {
        "name": "Sandy Bhai",
        "phone": null,
        "calling": true,
        "lastSeen": "3 weeks ago",
      },
      {
        "name": null,
        "phone": "+911161196371",
        "calling": true,
        "lastSeen": "3 weeks ago",
      },
      {
        "name": null,
        "phone": "+911206824456",
        "calling": true,
        "lastSeen": "3 weeks ago",
      },
    ];
  }
}
