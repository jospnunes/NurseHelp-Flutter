import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen>{
  navigateTo(route){
    Navigator.pushNamed(context, route);
  }

  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(251, 101, 214, 173)),
      home: Scaffold(
        body: const Center(
          child: Text('Home'),
        ),
        floatingActionButton: ElevatedButton(
          child: const Text("Voltar"),
          onPressed: () {
            navigateTo("/login");
          },
        ),
      ),
    );
  }
}