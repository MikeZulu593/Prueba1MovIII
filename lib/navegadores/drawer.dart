
import 'package:flutter/material.dart';
import 'package:app_prueba/screens/pantalla_prueba.dart';
import 'package:app_prueba/screens/pantalla_ejercicio01.dart';
import 'package:app_prueba/screens/pantalla_ejercicio02.dart';

class MiDrawer extends StatelessWidget {
  const MiDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Prueba 1 - Navegación'),
          ),
          ListTile(
            title: const Text("Prueba"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PantallaPrueba(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text("Ejercicio 01"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PantallaEjercicio01(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text("Ejercicio 02"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PantallaEjercicio02(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
