
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';


import '../../api/notification_api.dart';

class RecetaBurrito extends StatefulWidget {
  const RecetaBurrito({super.key});

  @override
  State<RecetaBurrito> createState() => _RecetaBurritoState();
}

class _RecetaBurritoState extends State<RecetaBurrito> {
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
                  child: Text('Burrito Ranchero',
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
                    Text('4 Milanesas de pollo (100 g c/u), 1 Pieza de chorizo picado y frito, 1 Aguacate cortado en rebanadas, 1/2 Paquete de queso tipo manchego (100 g), 1/2 Taza de frijoles bayos refritos calientes, 4 Tortillas de harina para burritos calientes, 1 Sobre con Sazonador MAGGI Sabor Ranchero', textAlign: TextAlign.justify,),
          
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
                      '1.  Abre una Hoja con Sazonador MAGGI® JUGOSO AL SARTÉN® Sabor Ranchero, coloca una milanesa, cierra y presiona ligeramente para impregnar las especias.',
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '2.  Colócala en una sartén sin aceite, precalentada a fuego bajo durante 1 minuto y cocina a fuego bajo de 6 a 7 minutos por cada lado o hasta que esté bien cocida. Retira la hoja y repite el procedimiento con el resto de las milanesas; corta en tiras y reserva.',
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '3.  Para formar los burritos, unta un poco de frijoles en las tortillas, añade tiras de pollo, el chorizo, las rebanadas de aguacate y el queso. Dobla las orillas hacia adentro y enrolla con cuidado para evitar que se salga el relleno, caliéntalos en una sartén por ambos lados, córtalos y ofrece.',
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
                        title: 'Te ha gustado Burrito Ranchero',
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
