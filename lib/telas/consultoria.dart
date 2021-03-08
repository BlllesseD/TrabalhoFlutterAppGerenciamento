import 'package:flutter/material.dart';

class Mensagem {
  String titulo;
  String titulo2;
  String contato1;
  String contato2;
  String contato3;
  String telefone1;
  String telefone2;
  String telefone3;
  Mensagem(this.titulo, this.titulo2, this.contato1, this.contato2,
      this.contato3, this.telefone1, this.telefone2, this.telefone3);
}

//construindo trilha consultoria
class Consultoria extends StatefulWidget {
  static const caminhoDaRota = '/trilhaconsultor';
  ConsultoriaState createState() {
    return ConsultoriaState();
  }
}

class ConsultoriaState extends State<Consultoria> {
  Mensagem msg;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Consultoria",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey,
        ),
        body: Center(
          child: ListView(
            children: <Widget>[
              InkWell(
                child: Padding(
                  padding: EdgeInsets.all(6.0),
                  child: Image.network(
                      "https://uploaddeimagens.com.br/images/002/952/175/full/d8593e_94aa3000685b4533819b0f0ea9526437_mv2.png?1604855159"),
                ),
                onTap: () {
                  msg = Mensagem(
                    'Recursos Humanos',
                    'Consultoria RH',
                    'Gabriel Carlos de Jesus',
                    'Gabriela Roberta',
                    'Tadeu Guimar�es Silva',
                    '(XX) 99999-9999',
                    '(XX) 99999-9999',
                    '(XX) 99999-9999',
                  );
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Consultores(msg)));
                },
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30.2),
                child: RaisedButton(
                  onPressed: () {
                    msg = Mensagem(
                      'Financeiro',
                      'Consultoria Financeira',
                      'Gabriel Carlos de Jesus',
                      'Gabriela Roberta',
                      'Tadeu Guimar�es Silva',
                      '(XX) 99999-9999',
                      '(XX) 99999-9999',
                      '(XX) 99999-9999',
                    );
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Consultores(msg)));
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF00BFFF),
                          Color(0xFF87CEFA),
                          Color(0xFF87CEEB),
                        ],
                      ),
                    ),
                    padding: const EdgeInsets.fromLTRB(150, 20, 150, 20),
                    child: Text(
                      'Finanças',
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30.2),
                child: RaisedButton(
                  onPressed: () {
                    msg = Mensagem(
                        'Recursos Humanos',
                        'Consultoria de RH',
                        'Gabriel Carlos de Jesus',
                        'Gabriela Roberta',
                        'Tadeu Guimar�es Silva',
                        '(XX) 99999-9999',
                        '(XX) 99999-9999',
                        '(XX) 99999-9999');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Consultores(msg)));
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF00BFFF),
                          Color(0xFF87CEFA),
                          Color(0xFF87CEEB),
                        ],
                      ),
                    ),
                    padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                    child: Text(
                      'Recursos Humanos',
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30.2),
                child: RaisedButton(
                  onPressed: () {
                    msg = Mensagem(
                      'Tecnologia da Informa��o ',
                      'Consultoria T.I',
                      'Gabriel Carlos de Jesus',
                      'Gabriela Roberta',
                      'Tadeu Guimar�es Silva',
                      '(XX) 99999-9999',
                      '(XX) 99999-9999',
                      '(XX) 99999-9999',
                    );
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Consultores(msg)));
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF00BFFF),
                          Color(0xFF87CEFA),
                          Color(0xFF87CEEB),
                        ],
                      ),
                    ),
                    padding: const EdgeInsets.fromLTRB(130, 20, 130, 20),
                    child: Text(
                      'Tecnologia',
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class Consultores extends StatelessWidget {
  final Mensagem msg;
  Consultores(this.msg);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${msg.titulo}'),
          backgroundColor: Colors.grey,
        ),
        body: ListView(children: <Widget>[
          Row(children: [
            Container(
              margin: EdgeInsets.all(40),
              child: Text(
                '${msg.titulo2}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Image.network(
              "https://uploaddeimagens.com.br/images/002/952/222/thumb/d8593e_94aa3000685b4533819b0f0ea9526437_mv2.png?1604858573",
              height: 80,
            ),
          ]),
          Column(children: [
            Container(
              margin: EdgeInsets.all(30),
              child: Text(
                'Lista de Contatos',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ]),
          Container(
            height: 80,
            margin: EdgeInsets.all(2),
            color: Colors.blue[50],
            child: ListTile(
              leading: Image(
                image: NetworkImage(
                    'https://uploaddeimagens.com.br/images/002/952/271/thumb/usuariosss.png?1604860995'),
                height: 50,
                width: 70,
              ),
              title: Text('${msg.contato1}'),
              subtitle: Text(
                '${msg.telefone1}',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
              onTap: () {},
            ),
          ),
          Container(
            height: 80,
            margin: EdgeInsets.all(2),
            color: Colors.blue[50],
            child: ListTile(
              leading: Image(
                image: NetworkImage(
                    'https://uploaddeimagens.com.br/images/002/952/271/thumb/usuariosss.png?1604860995'),
                height: 50,
                width: 70,
              ),
              title: Text('${msg.contato2}'),
              subtitle: Text(
                '${msg.telefone2}',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
              onTap: () {},
            ),
          ),
          Container(
            height: 80,
            margin: EdgeInsets.all(2),
            color: Colors.blue[50],
            child: ListTile(
              leading: Image(
                image: NetworkImage(
                    'https://uploaddeimagens.com.br/images/002/952/271/thumb/usuariosss.png?1604860995'),
                height: 50,
                width: 70,
              ),
              title: Text('${msg.contato3}'),
              subtitle: Text(
                '${msg.telefone3}',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
              onTap: () {},
            ),
          ),
        ]));
  }
}
