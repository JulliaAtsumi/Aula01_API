import 'package:flutter/material.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({Key? key}) : super(key: key);

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.black,
                fontSize: 30),
                decoration: InputDecoration(
              labelText: 'Nome do Usuário',
              labelStyle: TextStyle(color: Colors.black),
            )
            ),
            Divider(),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              style: TextStyle(color: Colors.black,
              fontSize: 30),
              decoration: InputDecoration(
                labelText: 'Senha',
                labelStyle: TextStyle(color: Colors.black),
              )
            ),
            Divider(),
              ElevatedButton(
                style: style,
                onPressed: () {},
                child: const Text('Enviar'),
              ),
          ],
        ),
      ),
    );
  }
}
