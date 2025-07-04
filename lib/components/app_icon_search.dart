import 'package:flutter/material.dart';
import 'package:leads/customer/Models/data/contatos_model.dart';

class AppIconSearch extends StatefulWidget {
  final String? contactName;
  final void Function()? closeAction;
  final void Function()? confirmAction;
  final VoidCallback? acao;
  final void Function(String)? onChanged;
  const AppIconSearch({
    super.key,
    this.contactName,
    this.acao,
    required this.onChanged,
    this.closeAction,
    required this.confirmAction,
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
      iconSize: 20,
      padding: EdgeInsets.zero,
      constraints: BoxConstraints(),
      onPressed: () {
        setState(() {
          Scaffold.of(context).showBottomSheet((BuildContext context) {
            return Container(
              height: 150,
              decoration: BoxDecoration(
                color: const Color.fromARGB(
                  255,
                  255,
                  255,
                  255,
                ), // Cor de fundo do BottomSheet
                border: Border.all(
                  color: Colors.black26, // Cor da borda
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(16), // Borda arredondada
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.transparent,
                      height: 38,
                      width: 150,
                      child: Padding(
                        padding: const EdgeInsets.all(0.1),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(elevation: 0),

                          onPressed: () {
                            setState(() {
                              contatos = contatosModel.dataContactsModel(
                                value: widget.contactName,
                              );
                              Navigator.pop(context);
                            });
                          },
                          child: Row(
                            children: [
                              Icon(Icons.close_outlined, size: 36),
                              Text("Cancelar"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width - 46,
                      height: 46,
                      child: TextField(
                        onChanged: widget.onChanged,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: "Pesquisar Contatos",
                          suffixIcon: IconButton(
                            onPressed: widget.confirmAction,
                            icon: Icon(Icons.search, size: 24),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          });
        });
      },
      icon: Icon(Icons.search),
    );
  }
}
