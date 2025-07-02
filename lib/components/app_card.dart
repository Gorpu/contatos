import 'package:flutter/material.dart';
import 'package:leads/components/app_phone_icon.dart';

class AppCard extends StatelessWidget {
  final String? nome;
  final String? telefone;
  final String? visto;
  final bool? ligar;
  const AppCard({
    super.key,
    required this.nome,
    this.telefone,
    this.visto,
    this.ligar,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Container(
        height: 90,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${nome ?? telefone}",
                      style: TextStyle(
                        fontFamily: "URWGeometric",
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      "$visto",
                      style: TextStyle(
                        fontFamily: "URWGeometric",
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Color(0xFF6E7582),
                      ),
                    ),
                  ],
                ),
                AppPhoneIconTrue(telefonar: ligar),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
