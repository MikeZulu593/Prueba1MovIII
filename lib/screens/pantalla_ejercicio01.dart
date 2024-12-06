import 'package:flutter/material.dart';

class PantallaEjercicio01 extends StatefulWidget {
  const PantallaEjercicio01({super.key});

  @override
  PantallaEjercicio01State createState() => PantallaEjercicio01State();
}

class PantallaEjercicio01State extends State<PantallaEjercicio01> {
  final pesoController = TextEditingController();
  final alturaController = TextEditingController();
  String resultado = "";

  void calcularIMC() {
    double peso = double.parse(pesoController.text);
    double altura = double.parse(alturaController.text);
    double imc = peso / (altura * altura);

    if (imc < 18.5) {
      resultado = "Tiene bajo peso, su IMC es: ${imc.toStringAsFixed(2)}";
    } else if (imc < 25) {
      resultado = "Su peso es normal, su IMC es: ${imc.toStringAsFixed(2)}";
    } else if (imc < 30) {
      resultado = "Tiene sobrepeso, su IMC es: ${imc.toStringAsFixed(2)}";
    } else {
      resultado = "Sufre de obesidad, su IMC es: ${imc.toStringAsFixed(2)}";
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cálculo de IMC")),
      body: Column(
        children: [
          TextField(
            controller: pesoController,
            decoration: InputDecoration(labelText: "Peso (kg)"),
          ),
          TextField(
            controller: alturaController,
            decoration: InputDecoration(labelText: "Altura (m)"),
          ),
          ElevatedButton(
            onPressed: calcularIMC,
            child: Text("Calcular"),
          ),
          Text(
            resultado,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
