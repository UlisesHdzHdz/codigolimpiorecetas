
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';


import '../../api/notification_api.dart';

class RecetaPasta extends StatefulWidget {
  const RecetaPasta({super.key});

  @override
  State<RecetaPasta> createState() => _RecetaPastaState();
}

class _RecetaPastaState extends State<RecetaPasta> {
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
                  child: Text('Pasta Ligera',
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
                    Text('2 Tazas Brócoli, 1 Lata Leche Evaporada, 1 Cucharada Fécula de maíz, 250 Gramos Pasta tornillo cocida, 1 Cucharada Consomé de pollo en polvo ', textAlign: TextAlign.justify,),
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
                      '1.  Licúa la Leche Evaporada CARNATION® CLAVEL® 80% Menos Grasa* con la fécula de maíz y el consomé de pollo en polvo.',
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '2.  Cocina por 10 minutos o hasta que espese ligeramente, retira del fuego y reserva.',
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '3.  Baña la pasta con la salsa, decora con el brócoli y ofrece.',
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '4.  *comparada contra leche evaporada CARNATION® CLAVEL® regular.',
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
                        title: 'Te ha gustado Pasta Ligera',
                        body:
                            'Gracias por tu me gusta, sigue navegando y descubre nuevas recetas!')
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
