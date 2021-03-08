import 'package:flutter/material.dart';
import "telas/logintela.dart";
import 'telas/consultoria.dart';
import 'telas/trilhageral.dart';
import 'telas/avaliacao.dart';

void main() => runApp(MeuAplicativo());

//*definindo rotas
class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginTela(),
      debugShowCheckedModeBanner: false,
      routes: {
        Consultoria.caminhoDaRota: (context) => Consultoria(),
        TrilhaGeral.caminhoDaRota: (context) => TrilhaGeral(),
        Avaliar.caminhoDaRota: (context) => Avaliar(),
      },
    );
  }
}
