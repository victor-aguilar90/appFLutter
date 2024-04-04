import 'package:flutter/material.dart';

void main () {
  runApp(const Projeto1()); // aqui conecta o Stateless
}

class Projeto1 extends StatelessWidget { //Primeiro chama o stateless
  const Projeto1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( //substituir por material app
      theme: ThemeData(brightness: Brightness.light, primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: Projeto01State(), //conectar o stateless com o stateful
    );
  }
}

class Projeto01State extends StatefulWidget { // Depois o Statefull, renomear classe
  const Projeto01State({super.key});

  @override
  State<Projeto01State> createState() => _Projeto01StateState();
}

class _Projeto01StateState extends State<Projeto01State> {
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(), // Cria barra lateral
      appBar: AppBar(title: Text("Olá Mundo!"),), // COnteudo do topo do app
      body: Container(
        child: Center(child: GestureDetector(child: Text("$contador"),  
        onTap: () {
        setState(() {
          contador++;
        });},)),),  // Conteudo do centro
    ); // Criar o scaffold
  }
}