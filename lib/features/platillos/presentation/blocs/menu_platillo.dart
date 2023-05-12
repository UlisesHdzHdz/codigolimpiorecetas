
import 'package:flutter/material.dart';

import 'cenas.dart';
import 'comidas.dart';
import 'desayunos.dart';

class MenuPlatillo extends StatefulWidget {
  const MenuPlatillo({super.key});

  @override
  State<MenuPlatillo> createState() => _MenuPlatilloState();
}

class _MenuPlatilloState extends State<MenuPlatillo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.amber[300],
        title: const Text('Menú', style: TextStyle(color: Colors.black),),
        centerTitle: false,
        actions: <Widget>[
          Image.asset('assets/almuerzo.png', scale: 1.0, width: 40,)
        ],
      ),
       body: ListView(
       padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 10.0,
        ),
        
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: const Color.fromARGB(255, 13, 192, 49),
                height: 10,
              ),
              Container(
                color: const Color.fromARGB(255, 240, 247, 241),
                height: 10,
              ),
              Container(
                color: const Color.fromARGB(255, 197, 30, 30),
                height: 10,
              ),
              const SizedBox(height: 150,),

               MaterialButton(
                 elevation: 20,
                minWidth: 210.0,
                height: 55.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                side: const BorderSide(color: Colors.amberAccent, width: 2)
                ),
                
                onPressed: () {
                   Navigator.push(
                   context,
                  MaterialPageRoute(builder: (context) => const MenuDesa()),
                );
                },
                color: Colors.grey[300],
                child: const Text('Desayunos',
                 style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 22,
                  )
                
                ),
              ),
              const SizedBox(height: 30,),
               MaterialButton(
                 elevation: 20,
                minWidth: 210.0,
                height: 55.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                side: const BorderSide(color: Colors.amberAccent, width: 2)
                ),
                onPressed: () {
                   Navigator.push(
                   context,
                  MaterialPageRoute(builder: (context) => const MenuComida()),
                );
                },
                color: Colors.grey[300],
                child: const Text('Comidas',
                 style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 22,
                  )
                
                ),
              ),
              const SizedBox(height: 30,),
               MaterialButton(
                 elevation: 20,
                minWidth: 210.0,
                height: 55.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                side: const BorderSide(color: Colors.amberAccent, width: 2)
                ),
                onPressed: () {
                   Navigator.push(
                   context,
                  MaterialPageRoute(builder: (context) => const MenuCena()),
                );
                },
                color: Colors.grey[300],
                child: const Text('Cenas',
                 style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 22,
                  )
                ),
              ),
             const  SizedBox(height: 100,),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                color:Colors.amber[300],
                borderRadius: BorderRadius.circular(10),
                
                ),
                height: 100,
                child: const Center(
                  
                  child: Text('No me conformo con dar de comer quiero crear emociones',
                  
                  style: TextStyle(fontSize: 17, fontFamily: 'rboldt', ),
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.rtl,
                
                  ),
                ),
                
              ),
            ],
          )
        ], 
      ),
    );
  }
}