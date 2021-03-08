import "package:flutter/material.dart";
import 'consultoria.dart';
import 'logintela.dart';
import 'package:flutter/cupertino.dart';
import 'avaliacao.dart';

//Construindo trilha Geral */
class TrilhaGeral extends StatefulWidget {
  static const caminhoDaRota = '/trilhageral';
  TrilhaGeralState createState() {
    return TrilhaGeralState();
  }
}

class TrilhaGeralState extends State<TrilhaGeral> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      //Construindo menu de navegação
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                child: Text(
                  'Menu de navegação',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightGreen,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.blue[900],
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://uploaddeimagens.com.br/images/002/952/175/full/d8593e_94aa3000685b4533819b0f0ea9526437_mv2.png?1604855159'))),
            ),
            ListTile(
              title: Text(
                'Consultoria',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.lightGreen,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, Consultoria.caminhoDaRota);
              },
            ),
            ListTile(
              title: Text(
                'Avaliar app',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.lightGreen,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, Avaliar.caminhoDaRota);
              },
            ),
            ListTile(
              title: Text(
                'logout',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  color: Colors.redAccent,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                  CupertinoPageRoute(builder: (context) => LoginTela()),
                  (_) => false,
                );
              },
            ),
          ],
        ),
      ),
      //Criando a lista de videos por categoria
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Recursos Humanos',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightGreen),
            ),
          ),
          Expanded(
            child: FittedBox(
              fit: BoxFit.contain,
              child: Image.network(
                  'https://github.com/flutter/plugins/raw/master/packages/video_player/video_player/doc/demo_ipod.gif?raw=true'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              'Finanças',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.lightGreen,
              ),
            ),
          ),
          Expanded(
            child: FittedBox(
              fit: BoxFit.contain,
              child: Image.network(
                  'https://github.com/flutter/plugins/raw/master/packages/video_player/video_player/doc/demo_ipod.gif?raw=true'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Tecnologia da informação',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightGreen),
            ),
          ),
          Expanded(
            child: FittedBox(
              fit: BoxFit.contain,
              child: Image.network(
                  'https://github.com/flutter/plugins/raw/master/packages/video_player/video_player/doc/demo_ipod.gif?raw=true'),
            ),
          ),
        ],
      ),
    );
  }
}
