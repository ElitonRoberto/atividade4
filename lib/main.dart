import 'package:flutter/material.dart';
import 'src/login.dart';
import 'src/cadastro.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/login': (context) => const PageLogin(),
        '/cadastro': (context) => const PageCadastro()
      },
      initialRoute: '/login',
    );
  }
}
