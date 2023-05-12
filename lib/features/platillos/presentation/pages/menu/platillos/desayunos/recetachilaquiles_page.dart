
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';


import '../../../../../data/datasources/api/notification_api.dart';

class RecetaChilaquiles extends StatefulWidget {
  const RecetaChilaquiles({super.key});

  @override
  State<RecetaChilaquiles> createState() => _RecetaChilaquilesState();
}

class _RecetaChilaquilesState extends State<RecetaChilaquiles> {
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
                  child: Text('Chilaquiles Verdes',
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
                    Text('1 1/2 Tazas de agua, 2 Dientes de ajo cocidos, 1 Cucharada de aceite vegetal, 1 Bolsa de totopos (350 g), 2 Chiles serrano cocidos, 5 Ramas de cilantro desinfectado, 600 Gramos de tomates verdes cocidos, 1/4 De pieza de cebolla mediana, cocida, 200 Gramos de queso fresco desmoronado, 1 1/2 Cucharadas de consomé de pollo en polvo, 1 Pechuga de pollo cocida y deshebrada (500 g), 1 Envase de Media Crema refrigerada (190 g)  ', textAlign: TextAlign.justify,),
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
                      '1.  Para la salsa, licúa los tomates con la cebolla, los ajos, los chiles, el agua, el cilantro y el consomé de pollo. Calienta el aceite, vierte lo que licuaste y cocina hasta que hierva moviendo ocasionalmente.',
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '2.  Agrega los totopos a la salsa y mezcla suavemente para que absorban un poco de salsa.',
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '3.  Sirve los chilaquiles y baña con un poco más de salsa. Añade el pollo, la Media Crema y el queso. Ofrece.',
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
                        title: 'Te ha gustado Chilaquiles Verdes',
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
