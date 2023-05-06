import 'dart:io';

import 'package:flutter/material.dart';

class cadastro extends StatefulWidget {
  cadastro({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  State<cadastro> createState() => _cadastroState();
}

class _cadastroState extends State<cadastro> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                  validator: (String? nome) {
                    if (nome!.isEmpty) {
                      return "Campo Obrigatório!";
                    }
                  },
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.black, fontSize: 30),
                  decoration: InputDecoration(
                    labelText: 'Nome:',
                    labelStyle: TextStyle(color: Colors.black),
                  )),
              Divider(),
              TextFormField(
                  validator: (String? email) {
                    if (email!.isEmpty) {
                      return "Campo Obrigatório!";
                    }
                  },
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.black, fontSize: 30),
                  decoration: InputDecoration(
                    labelText: 'Email:',
                    labelStyle: TextStyle(color: Colors.black),
                  )),
              Divider(),
              TextFormField(
                  validator: (String? senha) {
                    if (senha!.isEmpty) {
                      return "Campo Obrigatório!";
                    }
                  },
                  keyboardType: TextInputType.visiblePassword,
                  style: TextStyle(color: Colors.black, fontSize: 30),
                  decoration: InputDecoration(
                    labelText: 'Senha:',
                    labelStyle: TextStyle(color: Colors.black),
                  )),
              Divider(),
              ElevatedButton(
                style: style,
                onPressed: () {
                  _onClickCadastro();
                },
                child: const Text('Enviar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

_onClickCadastro() {}
