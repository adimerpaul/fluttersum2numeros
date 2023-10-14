import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  String result= '0';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Suma de 2 numeros'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'fni.png',
                width: 200,
                height: 200,
              ),
              TextField(
                controller: num1Controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Ingrese numero 1',
                ),
              ),
              TextField(
                controller: num2Controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Ingrese numero 2',
                ),
              ),
              ElevatedButton(
                onPressed: calcularSuma,
                child: const Text('SUMA DE 2 NUMEROS'),
              ),
              Text(
                result,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  void calcularSuma() {
    int num1 = int.parse(num1Controller.text);
    int num2 = int.parse(num2Controller.text);
    int suma = num1 + num2;
    setState(() {
      result = '$num1 + $num2 = $suma';
    });
  }
}
