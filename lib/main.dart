import 'package:flutter/material.dart';
import 'loginScreen.dart';
import 'registerScreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'nurse_help',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // rotas
      routes: {
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
      },

      home: const LoginScreen(),
    );
  }
}
