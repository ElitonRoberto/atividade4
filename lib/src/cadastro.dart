import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  _Formulario createState() => _Formulario();
}

class _Formulario extends State<Formulario> {
  final _formkey = GlobalKey<FormState>();

  //String nome = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Name',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'informe algum texto';
              }
              return null;
            },
          ),
         Container(
            height: 20,
          ),
         TextFormField(
            decoration: const InputDecoration(
              hintText: "Senha",
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'informe algum texto';
              }
              return null;
            },
          ),
          ElevatedButton(
            onPressed: () {
              if (_formkey.currentState!.validate()) ;
            },
            child: Text('enviar'),
          ),
        ],
      ),
    );
  }
}
