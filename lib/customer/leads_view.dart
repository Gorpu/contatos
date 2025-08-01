import "package:flutter/material.dart";
import "package:leads/components/app_default_components/app_text.dart";
import "package:leads/components/app_default_components/app_transparent_button.dart";
import "package:leads/components/app_default_components/app_render_cards.dart";
import "package:leads/components/app_default_components/app_icon_search/app_icon_search.dart";
import "package:leads/components/app_default_components/app_label.dart";

class LeadsView extends StatefulWidget {
  const LeadsView({super.key});

  @override
  State<LeadsView> createState() => _LeadsViewState();
}

class _LeadsViewState extends State<LeadsView> {
  String? valorDigitado;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: size.width * 0.06,
          right: size.width * 0.06,
          top: size.height * 0.05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppLabel(label: "Leads", fontSize: 32),
                AppIconSearch(
                  onChanged: (value) {
                    setState(() {
                      valorDigitado = value;
                    });
                  },
                  closeOption: () {
                    setState(() {
                      valorDigitado;
                    });
                    valorDigitado = null;
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.024),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(text: "Your Leads", height: 20, width: 80),
                  AppTransparentButton(
                    text: "FILTER",
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: Text(
                              "Função em desenvolvimento",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "URWGeometric",
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: AppRenderCards.lengthAllData(valorDigitado),
                itemBuilder:
                    (context, index) =>
                        AppRenderCards.cardsApp(context, index, valorDigitado),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
