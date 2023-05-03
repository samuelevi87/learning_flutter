import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Display extends StatelessWidget {
  final String text;

  Display(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1, //ocupa o espaço disponível
      child: Container(
        color: Color.fromRGBO(48, 48, 48, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          //colocando o texto no fim do espaço vertical dispónível
          crossAxisAlignment: CrossAxisAlignment.stretch,
          //coluna ocupando a tela inteira
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              //adicionando um espaçamento entre as extremidades
              child: AutoSizeText(
                text,
                minFontSize: 20,
                maxFontSize: 80,
                maxLines: 1,
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                  decoration: TextDecoration.none,
                  fontSize: 80,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
