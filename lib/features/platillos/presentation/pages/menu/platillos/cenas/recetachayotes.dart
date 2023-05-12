
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';


import '../../api/notification_api.dart';

class RecetaChayote extends StatefulWidget {
  const RecetaChayote({super.key});

  @override
  State<RecetaChayote> createState() => _RecetaChayoteState();
}

class _RecetaChayoteState extends State<RecetaChayote> {
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
                  child: Text('Chayotes Gratinados',
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
                    Text('2 Cucharadas Aceite de maíz, 1 Pieza Jitomate lavado y picado, 1 Cucharadita Sal con ajo en polvo, 2 Piezas Chile ancho limpios y desvenados, 2 Piezas Chile ancho limpios y desvenados, 1 Pieza *Chile guajillo limpio, sin semilla, cocido, 1 Cubo Concentrado de Tomate con Pollo, 1 Taza Queso tipo manchego rallado, 2 Piezas Chayote pelados, cortados y cocidos.', textAlign: TextAlign.justify,),
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
                      '1.  Sofríe en el aceite caliente, el jitomate con la cucharadita de sal con ajo en polvo por 4 minutos. Retira del fuego. Licua junto con los chiles y el cubo de CONSOMATE®.',
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '2.  Retira un poco de la pulpa del chayote cocido y mezcla con la mitad del queso tipo manchego . Rellena los chayotes con esta preparación y ponlos en un refractario. Cubre con el resto del queso tipo manchego y con la salsa de chiles. Hornea por 15 minutos o hasta que el queso se gratine.',
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '3.  Sirve caliente.',
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
                        title: 'Te ha gustado Chayotes Gratinados',
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
