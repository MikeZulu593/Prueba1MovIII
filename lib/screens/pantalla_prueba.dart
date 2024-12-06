import 'package:app_prueba/navegadores/drawer.dart';
import 'package:flutter/material.dart';

class PantallaPrueba extends StatelessWidget {
  const PantallaPrueba({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pantalla Prueba"),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.jpg'), 
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Nombre: Enzo Nieto",
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
                SizedBox(height: 10),
                Text(
                  "GitHub: MikeZulu593",
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: MiDrawer(),
    );
  }
}
