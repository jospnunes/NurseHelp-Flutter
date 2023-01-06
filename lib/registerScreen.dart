import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  RegisterScreenState createState() => RegisterScreenState();
}

class RegisterScreenState extends State<RegisterScreen> {
  FirebaseAuth auth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
  late String _email;
  late String _password;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(251, 101, 214, 173)),
      home: Scaffold(
        body: Form(
          key: _formKey,
          child: Column(children: [
            const Text("Insira seus dados abaixo:"),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
                hintText: 'Nome',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Insira seu nome';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
                hintText: 'Email',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Insira seu email';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
                hintText: 'Senha',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Insira sua senha';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
                hintText: 'Repetir senha',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Insira sua senha novamente';
                }
                return null;
              },
            ),
          ]),
        ),
      ),
    );
  }
}
