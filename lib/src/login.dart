import 'package:flutter/material.dart';

class MeuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Login"),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Text('Usuário'),
              Text('Senha'),
            ],
          )),
    );
  }
}
