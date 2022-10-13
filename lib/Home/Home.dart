import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Hola "),
        bottomNavigationBar: BottomNavigationBar(
        items: [ 
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined, ), label: 'Inicio'
          ), BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'Atras')
        ]),
      );
    
  }
}

