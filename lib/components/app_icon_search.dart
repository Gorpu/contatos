import 'package:flutter/material.dart';

class AppIconSearch extends StatefulWidget {
  final VoidCallback? acao;
  final void Function(String)? onChanged;
  const AppIconSearch({super.key, this.acao, this.onChanged});

  @override
  State<AppIconSearch> createState() => _AppIconSearchState();
}

class _AppIconSearchState extends State<AppIconSearch> {
  bool mostrarCampo = true;
  @override
  Widget build(BuildContext context) {
    return mostrarCampo
        ? Expanded(
          child: TextField(
            onChanged: widget.onChanged,
            decoration: InputDecoration(
              hintText: "Search",
              suffixIcon: IconButton(
                onPressed: () {
                  Scaffold.of(context).showBottomSheet((BuildContext context) {
                    return Container(
                      width: 400,
                      height: 400,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      child: Column(),
                    );
                  });
                  setState(() {
                    mostrarCampo = false;
                  });
                },
                icon: Icon(Icons.close),
              ),
            ),
          ),
        )
        : IconButton(
          onPressed: () {
            setState(() {
              mostrarCampo = true;
            });
          },
          icon: Icon(Icons.search),
        );
  }
}
