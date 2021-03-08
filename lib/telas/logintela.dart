import 'package:flutter/material.dart';
import 'trilhageral.dart';

class LoginTela extends StatefulWidget {
  static const caminhoDaRota = '/Telalogin';
  LoginTelaState createState() {
    return LoginTelaState();
  }
}

// Controle entre tipos de login/cadastro
enum FormType { micro, consultant }

class LoginTelaState extends State<LoginTela> {
  final TextEditingController _emailFilter = new TextEditingController();
  final TextEditingController _passwordFilter = new TextEditingController();
  String _email = "";
  String _password = "";
  FormType _form = FormType.micro;

  LoginTelaState() {
    _emailFilter.addListener(_emailListen);
    _passwordFilter.addListener(_passwordListen);
  }

  void _emailListen() {
    if (_emailFilter.text.isEmpty) {
      _email = "";
    } else {
      _email = _emailFilter.text;
    }
  }

  void _passwordListen() {
    if (_passwordFilter.text.isEmpty) {
      _password = "";
    } else {
      _password = _passwordFilter.text;
    }
  }

  void _formChange() async {
    setState(() {
      if (_form == FormType.consultant) {
        _form = FormType.micro;
      } else {
        _form = FormType.consultant;
      }
    });
  }

  //construindo a tela
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: _buildBar(context),
      body: new Container(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              Image.network(
                  "https://uploaddeimagens.com.br/images/002/952/175/full/d8593e_94aa3000685b4533819b0f0ea9526437_mv2.png?1604855159"),
              _buildTextFields(),
              _buildButtons(),
            ],
          ),
        ),
      ),
    );
  }

  ///barra de titulo do app
  Widget _buildBar(BuildContext context) {
    return new AppBar(
      title: new Text(""),
      centerTitle: true,
    );
  }

  //Construindo TextFields
  Widget _buildTextFields() {
    return new Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          new Container(
            child: new TextField(
              controller: _emailFilter,
              decoration: new InputDecoration(
                  labelText: 'Email',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () => _emailFilter.clear(),
                  )),
            ),
          ),
          new Container(
            child: new TextField(
              controller: _passwordFilter,
              decoration: new InputDecoration(
                  labelText: 'Senha',
                  suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () => _passwordFilter.clear())),
              obscureText: true,
            ),
          )
        ],
      ),
    );
  }

  //construindo botões
  Widget _buildButtons() {
    //botao cadastrar microempresario
    if (_form == FormType.micro) {
      return new Container(
        child: new Column(
          children: <Widget>[
            new RaisedButton(
              child: new Text('Cadastrar'),
              onPressed: _loginMicroPressed,
            ),
            new RaisedButton(
              //mudando tipo de cadastro para consultor
              child: new Text('Cadastrar como consultor'),
              onPressed: _formChange,
            ),
          ],
        ),
      );
      //botao cadastrar consultor
    } else {
      return new Container(
        child: new Column(
          children: <Widget>[
            new RaisedButton(
              child: new Text('Cadastrar'),
              onPressed: _loginConsultantPressed,
            ),
            new FlatButton(
              //voltando para cadastro de micro
              child: new Text('Voltar'),
              onPressed: _formChange,
            )
          ],
        ),
      );
    }
  }

  void _loginMicroPressed() {
    Navigator.pushNamed(context, TrilhaGeral.caminhoDaRota);
  }

  void _loginConsultantPressed() {
    Navigator.pushNamed(context, TrilhaGeral.caminhoDaRota);
  }
}
