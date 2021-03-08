import 'package:flutter/material.dart';

class Avaliar extends StatefulWidget {
  static const caminhoDaRota = '/avaliacao';
  AvaliarState createState() {
    return AvaliarState();
  }
}

class AvaliarState extends State<Avaliar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Avaliação",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(16),
          child: ListView(
            children: <Widget>[
              Text("Os videos te ajudaram no seu desenvolvimento?"),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  FlatButton(onPressed: () {}, child: Text("SIM")),
                  FlatButton(onPressed: () {}, child: Text("NAO")),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                  "Os videos ajudaram no seu entendimento do assunto buscado?"),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  FlatButton(onPressed: () {}, child: Text("SIM")),
                  FlatButton(onPressed: () {}, child: Text("NAO")),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text("Voce recomendaria o app para alguem?"),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  FlatButton(onPressed: () {}, child: Text("SIM")),
                  FlatButton(onPressed: () {}, child: Text("NAO")),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text("O que você achou da trilha de consultoria ?"),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  FlatButton(onPressed: () {}, child: Text("SIM")),
                  FlatButton(onPressed: () {}, child: Text('NAO'))
                ],
              ),
              Text("Você esta satisfeito com o aplicativo?"),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  FlatButton(onPressed: () {}, child: Text("SIM")),
                  FlatButton(onPressed: () {}, child: Text('NAO'))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
