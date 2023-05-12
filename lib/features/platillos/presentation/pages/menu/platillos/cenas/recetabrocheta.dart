
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';


import '../../api/notification_api.dart';

class RecetBrocheta extends StatefulWidget {
  const RecetBrocheta({super.key});

  @override
  State<RecetBrocheta> createState() => _RecetBrochetaState();
}

class _RecetBrochetaState extends State<RecetBrocheta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[300],
        title: const Text(
          'Receta',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
        actions: <Widget>[Image.asset('assets/almuerzo.png', width: 40,)],
      ),
      backgroundColor: Colors.amber[200],
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 30.0,
        ),
        children: <Widget>[
          const SizedBox(
            height: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 40,
                width: 200,
                child: const Center(
                  child: Text('Brochetas de Res',
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'rboldt',
                      )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 500,
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: const <Widget>[
                    Text(' INGREDIENTES',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 10,
                    ),
                    Text('1 Lata Leche Evaporada, 500 Gramos Carne de res, 2 Cucharadas Aceite de maíz, 2 Cucharadas Salsa de Soya MAGGI®, 12 Piezas Champiñones limpios, blancos, 2 Cucharadas Perejil fresco limpio, picado, 3 Piezas Pimiento morrón enlatado verde ', textAlign: TextAlign.justify,),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '¡A cocinar!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '1.  Arma cada brocheta insertando de manera alternada la carne, los champiñones y el pimiento. Sazona con la Salsa de Soya MAGGI®.',
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '2.  En una sartén calentar el aceite y freír las brochetas. Servir caliente.',
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: ElevatedButton.icon(
                  icon: const Icon(
                    Ionicons.heart_circle_outline,
                    color: Color.fromARGB(255, 237, 0, 0),
                    size: 25.0,
                  ),
                  label: const Text(
                    '¿TE GUSTÓ?',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 15,
                      fontFamily: 'rboldt',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () => showNotification(
                      title: 'Te ha gustado Brochetas de Res',
                      body:
                          'Gracias por tu me gusta, sigue navegando y descubre nuevas recetas!'),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      backgroundColor: Colors.green[100],
                      padding: const EdgeInsets.symmetric(
                          vertical: 14, horizontal: 35)),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
