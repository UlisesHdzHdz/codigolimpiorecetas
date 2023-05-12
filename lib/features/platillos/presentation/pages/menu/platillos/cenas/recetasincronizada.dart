
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';


import '../../api/notification_api.dart';
class RecetSincronizada extends StatefulWidget {
  const RecetSincronizada ({super.key});

  @override
  State<RecetSincronizada> createState() => _RecetSincronizadaState();
}

class _RecetSincronizadaState extends State<RecetSincronizada> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:AppBar(
        backgroundColor: Colors.amber[300],
        title: const Text('Receta', style: TextStyle(color: Colors.black),),
        centerTitle: false,
        actions: <Widget>[
          Image.asset('assets/almuerzo.png', width: 40,)
        ],
      ),
    backgroundColor: Colors.amber[200],
      body: ListView(
        
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 30.0,
        ),
        children: <Widget> [

              const SizedBox(height: 10,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                 decoration: BoxDecoration(   
                color:Colors.white,
                borderRadius: BorderRadius.circular(10),
                  ),
                height: 40,
                width: 200,
                 child: const Center(
                child: Text('Sincronizada',
                  style: TextStyle(fontSize: 17, fontFamily: 'rboldt', )
                   ),
                  ),
                   ),
              const SizedBox(height: 20,),
              Container(
                height: 500,
                width: 500,
                decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.circular(10)
                ),
                 child: Column(
                   children: const <Widget> [
                      Text(' INGREDIENTES',
                     textAlign: TextAlign.center,
                       style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold )
                        ),
                        SizedBox(height: 10,),
                         Text('1/2 Taza Agua, 1 Lata Leche Evaporada, 1 1/2 Taza Puré de tomate, 1/2 Cucharadita Sal, 12 Piezas Tostadas, 250 Gramos Jamón de pierna, 1 Cubo Consomé de pollo en polvo, 1 Cucharadita Cebolla en polvo, 1 Cucharadita Orégano seco molido, 1 Lata Piña en almíbar escurrida, asada (480 g), 1 1 Cucharada Fécula de maíz disuelta en 1 taza de agua ', textAlign: TextAlign.justify,), 

                        SizedBox(height: 20,),
                        Text('¡A cocinar!', style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
                        SizedBox(height: 20,),
                        Text('1.  Para la salsa, licúa la Leche Evaporada CARNATION® CLAVEL®, puré de tomate, agua, consomé de pollo sal y cebolla en polvo, oregáno Calienta la salsa durante 5 minutos, agrega la fécula de maíz y cocina a fuego medio hasta que espese un poco, moviendo constantemente para evitar que se pegue.',
                        textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 10,),
                        Text('2.  Agrega sobre una tortilla un poco de queso, una rebanada de jamón y un poco de piña; cubre con otra tortilla para formar la sincronizada y calienta en una sartén hasta que el queso se funda. Repite el procedimiento hasta terminar con los ingredientes.',
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
                      title: 'Te ha gustado Sincronizadas',
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