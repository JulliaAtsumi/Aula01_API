import 'dart:io';

import 'package:flutter/material.dart';

class cadastro extends StatefulWidget {
  const cadastro({Key? key}) : super(key: key);

  @override
  State<cadastro> createState() => _cadastroState();
}
class _cadastroState extends State<cadastro> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.black,
                    fontSize: 30),
                decoration:
                InputDecoration(
                  labelText: 'Nome:',
                  labelStyle: TextStyle(color: Colors.black),
                )
            ),
            Divider(),
            TextField(
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.black,
                    fontSize: 30),
                decoration: InputDecoration(
                  labelText: 'Email:',
                  labelStyle: TextStyle(color: Colors.black),
                )
            ),
            Divider(),
            TextField(
                keyboardType: TextInputType.visiblePassword,
                style: TextStyle(color: Colors.black,
                    fontSize: 30),
                decoration: InputDecoration(
                  labelText: 'Senha:',
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
