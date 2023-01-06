import 'package:flutter/material.dart';
import 'loginScreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  await Firebase.initializeApp();
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'primeiro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // rotas
      routes: {
        '/login': (context) => const LoginScreen(),
      },

      home: const LoginScreen(),
    );
  }
}
