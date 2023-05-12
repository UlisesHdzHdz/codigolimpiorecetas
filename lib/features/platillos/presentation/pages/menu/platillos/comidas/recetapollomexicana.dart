
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';


import '../../api/notification_api.dart';

class RecetPollo extends StatefulWidget {
  const RecetPollo({super.key});

  @override
  State<RecetPollo> createState() => _RecetPolloState();
}

class _RecetPolloState extends State<RecetPollo> {
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
                  child: Text('Pollo a la Mexicana',
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
                    Text('1/2 Cebolla asada, 2 Dientes de ajo asados, 4 Jitomates asados, 1/2 Taza de agua, 1/2 Cebolla fileteada, 5 Muslos o piernas de pollo cocidos, 3 Jitomates cortados en cubos pequeños, 2 Chiles jalapeño cortados en tiras, 2 Cucharadas de aceite de maíz, 2 Ramitas de cilantro picadas finamente, 2 Cubos de Concentrado de Tomate con Pollo ', textAlign: TextAlign.justify,),
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
                      '1.  Para la salsa, licúa ½ cebolla asada con los ajos, 4 jitomates asados, el agua y el Concentrado de Tomate con Pollo CONSOMATE®, reserva.',
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '2.  En una sartén, calienta el aceite y fríe ½ cebolla fileteada hasta que esté transparente. Agrega el pollo y fríe hasta que esté dorado, añade 3 jitomates cortados en cubos con los chiles jalapeños y cocina por 5 minutos.',
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '3.  Agrega la salsa y calienta hasta que hierva. Sirve, decora con el cilantro y ofrece.',
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
                        title: 'Te ha gustado Pollo a la Mexicana',
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
