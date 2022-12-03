import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(251, 101, 214, 173)),
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
              filled: true,
              fillColor: Colors.white,
              hintText: 'Email',
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              filled: true,
              fillColor: Colors.white,
              hintText: 'Senha',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: SizedBox(
              height: 50,
              width: 330,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 12, 0, 140),
                ),
                onPressed: null,
                child: const Text("Entrar"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: SizedBox(
              height: 50,
              width: 200,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                ),
                onPressed: null,
                child: const Text("Quero me cadastrar"),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15),
            child: SizedBox(
              height: 30,
              width: 150,
              child: Text(
                "Se voce é profissional",
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: SizedBox(
                child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: null,
              child: const Text("Clique aqui!"),
            )),
          )
        ],
      ))),
    );
  }
}
