import 'package:flutter/material.dart';
import 'package:leads/components/app_default_components/app_icon_search/app_box.dart';
import 'package:leads/customer/Models/data/contatos_model.dart';

class AppIconSearch extends StatefulWidget {
  final String? contactName;
  final void Function()? confirmOption;
  final void Function()? closeOption;
  final VoidCallback? acao;
  final void Function(String)? onChanged;
  const AppIconSearch({
    super.key,
    this.contactName,
    this.acao,
    required this.onChanged,
    this.confirmOption,
    required this.closeOption,
  });

  @override
  State<AppIconSearch> createState() => _AppIconSearchState();
}

class _AppIconSearchState extends State<AppIconSearch> {
  var contatosModel = ContatosModel();
  late var contatos = contatosModel.dataContactsModel(
    value: widget.contactName,
  );
  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 28,
      padding: EdgeInsets.zero,
      constraints: BoxConstraints(),
      onPressed: () {
        setState(() {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                contentPadding: EdgeInsets.zero,
                content: Container(
                  height: 220,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 8,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AppBox(
                      nameContact: widget.contactName,
                      onChanged: widget.onChanged,
                      confirmAction: widget.closeOption,
                    ),
                  ),
                ),
              );
            },
          );
        });
      },
      icon: Icon(Icons.search),
    );
  }
}
