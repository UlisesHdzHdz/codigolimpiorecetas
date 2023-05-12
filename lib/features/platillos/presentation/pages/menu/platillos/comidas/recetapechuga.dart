
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';


import '../../api/notification_api.dart';

class RecetPechugaCrema extends StatefulWidget {
  const RecetPechugaCrema({super.key});

  @override
  State<RecetPechugaCrema> createState() => _RecetPechugaCremaState();
}

class _RecetPechugaCremaState extends State<RecetPechugaCrema> {
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
                  child: Text('Pechuga con Crema',
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
                    Text('1 Taza de agua, 1 Lata de Media Crema, 1 Lata de Leche Evaporada, 2 Chiles chipotle adobados, 1 Paquete de queso crema (190 g), 5 Ramas de perejil picado finamente, 1 Cucharada de consomé de pollo en polvo, 1 Cucharadita de sal con ajo en polvo, 3/4 De taza de puré de tomate natural, 4 Supremas de pechuga de pollo, cocidas y fritas', textAlign: TextAlign.justify,),
                    SizedBox(
                      height: 30,
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
                      '1.  Licúa la Leche Evaporada CARNATION® CLAVEL® Reducida en Grasa*, la Media Crema NESTLÉ® Reducida en Grasa**, el queso crema, el agua, el consomé de pollo, la sal con ajo y el chile chipotle.',
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '2.  Calienta el puré de tomate hasta que cambie de color, agrega lo que licuaste y cocina hasta que espese ligeramente moviendo constantemente para evitar que se pegue.',
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '3.  Sirve las supremas de pollo con la salsa y decora con el perejil. Ofrece.',
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
                  onPressed: () => {
                    showNotification(
                        title: 'Te ha gustado Pechuga con Crema',
                        body:
                            'Gracias por tu me gusta, sigue navegando y descubre nuevas recetas!'),
                  },
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
