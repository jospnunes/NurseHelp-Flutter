import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
              child: Column(
        children: [
          Image.asset(
            'images/logo-nurse.png',
            height: 150,
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Email',
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Senha',
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            onPressed: null,
            child: Text("Entrar"),
          ),
        ],
      ))),
    );
  }
}
