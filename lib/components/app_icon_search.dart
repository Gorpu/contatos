import 'package:flutter/material.dart';

class AppIconSearch extends StatefulWidget {
  final VoidCallback? acao;
  final void Function(String)? onChanged;
  const AppIconSearch({super.key, this.acao, this.onChanged});

  @override
  State<AppIconSearch> createState() => _AppIconSearchState();
}

class _AppIconSearchState extends State<AppIconSearch> {
  bool mostrarCampo = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        if (!mostrarCampo)
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(20),
            ),
            width: 40,
            height: 40,
            child: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                setState(() => mostrarCampo = true);
                widget.acao?.call();
              },
            ),
          )
        else
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 240, 239, 237),
              width: 150,
              child: TextField(
                onChanged: widget.onChanged,
                autofocus: true,
                decoration: InputDecoration(
                  hintText: "Pesquisar",
                  suffixIcon: IconButton(
                    icon: Icon(Icons.close),
                    onPressed:
                        () => setState(() {
                          mostrarCampo = !mostrarCampo;
                          widget.onChanged?.call("");
                        }),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
