import 'package:flutter/material.dart';

import '../../blocs/menu_platillo.dart';
class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.amber[300],
      body: ListView(
        
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 80.0,
        ),
        children: <Widget> [
               Container(
                color: const Color.fromARGB(255, 13, 192, 49),
                height: 10,
              ),
              const Text('¡¡No necitamos comer menos si no comer bien!!' ,
              style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight:FontWeight.bold,
              fontFamily: 'rboldt',
              ),
              textAlign: TextAlign.center,
              ),
               
              Container(
                color: const Color.fromARGB(255, 255, 255, 255),
                height: 10,
              ),
              const SizedBox(height: 100,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                color: Colors.amber[100],
                image: const DecorationImage(image: NetworkImage('https://media4.giphy.com/media/1wn4W0NiirVR1fUbbP/giphy.gif?cid=ecf05e47te95a2lslxh346bz9o3qqjvqnkx1ueolb3dsp36m&rid=giphy.gif&ct=g',
                scale: 3,
                ),
                fit: BoxFit.cover,
                
                )
                ),
              ),
              const SizedBox(height: 60),
             const Text("Chef en tu bolsillo",
             style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight:FontWeight.bold,
              fontFamily: 'rboldt',
              ),
            ),
            const SizedBox(height: 110,),
                MaterialButton(
               
                elevation: 30,
                minWidth: 210.0,
                height: 55.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                
                onPressed: () {
                   Navigator.push(
                   context,
                  MaterialPageRoute(builder: (context) => const MenuPlatillo()),
                );
                },
                color: Colors.grey[200],
                
                child: const Text('Comenzar',
                
                 style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),
                 
                  fontSize: 22,
                  )
                
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}