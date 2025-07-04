class ContatosModel {
  String? nameContact;
  String? phone;
  List<String>? tags;
  bool? calling;
  String? lastSeen;

  ContatosModel({
    this.nameContact,
    this.phone,
    this.tags,
    this.calling,
    this.lastSeen,
  });

  List<ContatosModel> dataContactsModel({required String? value}) {
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

    // Limpa espaços e converte para minúsculas
    final search = value?.trim().toLowerCase() ?? '';

    // Se estiver vazio, retorna todos
    final filtered =
        search.isEmpty
            ? listContatos
            : listContatos.where((contato) {
              final name = contato['name']?.toString().toLowerCase() ?? '';
              final phone = contato['phone']?.toString().toLowerCase() ?? '';
              final tags =
                  (contato['tags'] as List<dynamic>)
                      .map((e) => e.toString().toLowerCase())
                      .toList();

              return name.contains(search) ||
                  phone.contains(search) ||
                  tags.any((tag) => tag.contains(search));
            }).toList();

    return filtered.map((item) {
      return ContatosModel(
        nameContact: item["name"],
        phone: item["phone"],
        tags: item["tags"],
        calling: item["calling"],
        lastSeen: item["lastSeen"],
      );
    }).toList();
  }
}
