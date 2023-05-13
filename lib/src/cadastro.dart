import 'package:flutter/material.dart';

class Formulario2 extends StatefulWidget {
  const Formulario2({super.key});

  @override
  _Formulario2 createState() => _Formulario2();
}

class _Formulario2 extends State<Formulario2> {
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
              hintText: "Email",
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
