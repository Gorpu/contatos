import 'package:flutter/material.dart';
import 'package:leads/components/app_phone_icon.dart';

class AppCard extends StatelessWidget {
  final String? nome;
  final String? telefone;
  final List<String>? tags;
  final String? visto;
  final bool? ligar;
  const AppCard({
    super.key,
    required this.nome,
    this.tags,
    this.telefone,
    this.visto,
    this.ligar,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(12),
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
                  Row(
                    children: [
                      if (tags != null && tags!.isNotEmpty && tags!.length >= 2)
                        ...tags!.map(
                          (teg) => Container(
                            height: 20,
                            padding: EdgeInsets.only(top: 2),
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 0, 0, 0),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              "  $teg  ",
                              style: TextStyle(
                                fontFamily: "URWGeometric",
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),

                  Text(
                    "$visto",
                    style: TextStyle(
                      fontFamily: "URWGeometric",
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
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
    );
  }
}
