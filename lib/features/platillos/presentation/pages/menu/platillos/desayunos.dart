import 'package:chef_bolsillo/Recetas/Desayunos/recetashuevos.dart';
import 'package:flutter/material.dart';

import '../../../../../Recetas/Desayunos/recetaburrito.dart';
import '../../../../../Recetas/Desayunos/recetachilaquiles.dart';
import '../../../../../Recetas/Desayunos/recetamalescalabaza.dart';
import '../../../../../Recetas/Desayunos/recetapanfrances.dart';


class MenuDesa extends StatefulWidget {
  const MenuDesa({super.key});

  @override
  State<MenuDesa> createState() => _MenuCenaState();
}

class _MenuCenaState extends State<MenuDesa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.amber[300],
        title: const Text('Desayunos', style: TextStyle(color: Colors.black),),
        centerTitle: false,
        actions: <Widget>[
          Image.asset('assets/almuerzo.png', width: 40,)
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
              const SizedBox(height: 80,),

                Row(
                  children: <Widget>[
                    const Expanded(child: 
                     CircleAvatar(
                   backgroundImage: NetworkImage('https://cdn2.cocinadelirante.com/sites/default/files/images/2017/11/comohacerpanfrances.jpg', scale: 1.0),
                  radius: 50,
                    ) 
                   ),
                    Center(
                      child: Column(
                        children: [
                          Container(
                          decoration: BoxDecoration(   
                          color:Colors.amber[300],
                          borderRadius: BorderRadius.circular(10),
                          ),
                          height: 70,
                          width: 180,
                          child: const Center(
                            child: Text('Pan frances',
                            style: TextStyle(fontSize: 17, fontFamily: 'rboldt', )
                            ),
                          ),
                          ),
                          MaterialButton(
                             elevation: 10,
                            minWidth: 150.0,
                            height: 30.0,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                            side: const BorderSide(color: Colors.amber, width: 2)
                            ),
                            onPressed: () {
                              Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const RecetaPan()),
                            );
                            },
                            color: Colors.grey[300],
                            child: const Text('Ver receta',
                            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 15,
                              fontFamily: 'rboldt'
                              )
                          
                          ),
                        ),
                        ],
                      ),

                    ),
                
                  ],
                ),
              const SizedBox(height: 30,),
                 Row(
                  children: <Widget>[
                    const Expanded(child: 
                     CircleAvatar(
                   backgroundImage: NetworkImage('https://assets.tmecosys.com/image/upload/t_web667x528/img/recipe/ras/Assets/7F4EB445-3C80-4275-98DA-B6E52C3D5C26/Derivates/B1829985-5553-49DA-A50B-557524798A43.jpg', scale: 1.0),
                  radius: 50,
                    ) 
                ),
                    Center(
                      child: Column(
                        children: [
                          Container(
                          decoration: BoxDecoration(   
                          color:Colors.amber[300],
                          borderRadius: BorderRadius.circular(10),
                          ),
                          height: 70,
                          width: 180,
                          child: const Center(
                            child: Text('Tamales de calabaza',
                            style: TextStyle(fontSize: 17, fontFamily: 'rboldt', )
                            ),
                          ),    
                         ),
                          MaterialButton(
                             elevation: 10,
                            minWidth: 150.0,
                            height: 30.0,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                            side: const BorderSide(color: Colors.amber, width: 2)
                            ),
                            onPressed: () {
                              Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const RecetaTamal()),
                            );
                            },
                            color: Colors.grey[300],
                            child: const Text('Ver receta',
                            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 15,
                              fontFamily: 'rboldt'
                              )
                          
                          ),
                        ),
                        ],
                        
                      ),
                    ),
                
                  ],
                ),
              const SizedBox(height: 30,),
                Row(
                  children: <Widget>[
                    const Expanded(child: 
                     CircleAvatar(
                   backgroundImage: NetworkImage('https://i.pinimg.com/originals/a0/57/06/a05706d7c6245dcefe77b38472833226.png', scale: 1.0),
                  radius: 50,
                    ) 
                ),
                    Center(
                      child: Column(
                        children: [
                          Container(
                          decoration: BoxDecoration(   
                          color:Colors.amber[300],
                          borderRadius: BorderRadius.circular(10),
                          ),
                          height: 70,
                          width: 180,
                          child: const Center(
                            child: Text('Chilaquiles verdes',
                            style: TextStyle(fontSize: 17, fontFamily: 'rboldt', )
                            ),
                          ),    
                         ),
                          MaterialButton(
                             elevation: 10,
                            minWidth: 150.0,
                            height: 30.0,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                            side: const BorderSide(color: Colors.amber, width: 2)
                            ),
                            onPressed: () {
                              Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const RecetaChilaquiles()),
                            );
                            },
                            color: Colors.grey[300],
                            child: const Text('Ver receta',
                            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 15,
                              fontFamily: 'rboldt'
                              )
                          
                          ),
                        ),
                        ],
                      ),
                    ),
                
                  ],
                ),
             const  SizedBox(height: 30,),
              Row(
                  children: <Widget>[
                    const Expanded(child: 
                     CircleAvatar(
                   backgroundImage: NetworkImage('https://preview.redd.it/cbm5w7rrvu901.jpg?auto=webp&s=ad0884979baf2e476a7e146884519455a7bf12cf',scale: 1.0),
                  radius: 50,
                    ) 
                ),
                    Center(
                      child: Column(
                        children: [
                          Container(
                          decoration: BoxDecoration(   
                          color:Colors.amber[300],
                          borderRadius: BorderRadius.circular(10),
                          ),
                          height: 70,
                          width: 180,
                          child: const Center(
                            child: Text('Huevos rancheros',
                            style: TextStyle(fontSize: 17, fontFamily: 'rboldt', )
                            ),
                          ),    
                         ),
                          MaterialButton(
                             elevation: 10,
                            minWidth: 150.0,
                            height: 30.0,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                            side: const BorderSide(color: Colors.amber, width: 2)
                            ),
                            onPressed: () {
                              Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const RecetaHuevos()),
                            );
                            },
                            color: Colors.grey[300],
                            child: const Text('Ver receta',
                            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 15,
                              fontFamily: 'rboldt'
                              )
                          
                          ),
                        ),
                        ],
                      ),
                    ),
                
                  ],
                ),
             const SizedBox(height: 30,),
              Row(
                  children: <Widget>[
                    const Expanded(child: 
                     CircleAvatar(
                   backgroundImage: NetworkImage('https://tse3.mm.bing.net/th?id=OIP.K7zZ4mJ6gcderSPztbigUAHaE7&pid=Api&P=0', scale: 1.0),
                  radius: 50,
                    ) 
                ),
                    Center(
                      child: Column(
                        children: [
                          Container(
                          decoration: BoxDecoration(   
                          color:Colors.amber[300],
                          borderRadius: BorderRadius.circular(10),
                          ),
                          height: 70,
                          width: 180,
                          child: const Center(
                            child: Text('Burrito Ranchero',
                            style: TextStyle(fontSize: 17, fontFamily: 'rboldt', )
                            ),
                          ),    
                          ),
                           MaterialButton(
                             elevation: 10,
                            minWidth: 150.0,
                            height: 30.0,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                            side: const BorderSide(color: Colors.amber, width: 2)
                            ),
                            onPressed: () {
                              Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const RecetaBurrito()),
                            );
                            },
                            color: Colors.grey[300],
                            child: const Text('Ver receta',
                            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 15,
                              fontFamily: 'rboldt'
                              )
                          
                          ),
                        ),
                        ],
                      ),
                    ),
                
                  ],
                ),
            ],

          )
        ], 
      ),
    );
  }
}