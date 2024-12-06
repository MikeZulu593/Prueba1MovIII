import 'package:app_prueba/navegadores/drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AppPrueba1());
}

class AppPrueba1 extends StatelessWidget {
  const AppPrueba1({super.key});

  @override

  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Cuerpo(),
    );
  }
}

class Cuerpo extends StatelessWidget {
  const Cuerpo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navegación"),
      ),
      drawer: MiDrawer(),
      body: const Center(
        child: Text(
          "App Prueba 1",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
