import 'package:flutter/material.dart';

class PantallaEjercicio02 extends StatefulWidget {
  const PantallaEjercicio02({super.key});

  @override
  PantallaEjercicio02State createState() => PantallaEjercicio02State();
}

class PantallaEjercicio02State extends State<PantallaEjercicio02> {
  final velocidadController = TextEditingController();
  String resultado = "";

  void calcularDistancia() {
    double velocidad = double.parse(velocidadController.text);
    int tiempo = 100; //EL TIEMPO FIJO ES DE 100 SEGUNDOS COMO SE HA PLANTEADO EN EL EJERCICIO
    double distancia = velocidad * tiempo; //formula

    resultado = "Distancia recorrida en 100 segundos: ${distancia.toStringAsFixed(2)} metros";
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ejercicio 02 - Cálculo de MRU")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: velocidadController,
              decoration: InputDecoration(labelText: "Velocidad constante (m/s)"),
              keyboardType: TextInputType.number,
            ),
          ),
          ElevatedButton(
            onPressed: calcularDistancia,
            child: Text("Calcular"),
          ),
          const SizedBox(height: 20),
          Text(
            resultado,
            style: TextStyle(fontSize: 17), 
          ),
        ],
      ),
    );
  }
}
