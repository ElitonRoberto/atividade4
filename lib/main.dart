import 'package:flutter/material.dart';
import 'src/login.dart';
import 'src/cadastro.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/login':(context) => MeuPage(),
        '/cadastro':(context) => Cadastro(),
      },
      initialRoute: '/login',
    );
  }
}
