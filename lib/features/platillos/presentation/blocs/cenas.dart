import 'package:flutter/material.dart';
import '../pages/menu/platillos/cenas/recetabrocheta.dart';
import '../pages/menu/platillos/cenas/recetachayotes.dart';
import '../pages/menu/platillos/cenas/recetapasta.dart';
import '../pages/menu/platillos/cenas/recetaquesadillas.dart';
import '../pages/menu/platillos/cenas/recetasincronizada.dart';


class MenuCena extends StatefulWidget {
  const MenuCena({super.key});

  @override
  State<MenuCena> createState() => _MenuCenaState();
}

class _MenuCenaState extends State<MenuCena> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.amber[300],
        title: const Text('Cenas', style: TextStyle(color: Colors.black),),
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
                  backgroundImage: NetworkImage('https://60minutos.info/wp-content/uploads/2020/10/SINCRONIZADAS-DE-POLLO.jpg'),
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
                          height: 80,
                          width: 180,
                          child: const Center(
                            child: Text('Sincronizadas',
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
                              MaterialPageRoute(builder: (context) => const RecetSincronizada()),
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
                  backgroundImage: NetworkImage('https://laopinion.com/wp-content/uploads/sites/3/2021/02/shutterstock_1007405620.jpg?quality=80&strip=all&w=1200'),
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
                          height: 80,
                          width: 180,
                          child: const Center(
                            child: Text('Brochetas de res',
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
                              MaterialPageRoute(builder: (context) => const RecetBrocheta()),
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
                  backgroundImage: NetworkImage('http://milrecetas.net/wp-content/uploads/2015/12/Chayotes-gratinados-4.jpg'),
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
                          height: 80,
                          width: 180,
                          child: const Center(
                            child: Text('Chayotes gratinados',
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
                              MaterialPageRoute(builder: (context) => const RecetaChayote()),
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
                  backgroundImage: NetworkImage('https://www.hechicerafit.com/static/r/484/pasta-ligera-con-salsa-cremosa-de-albahaca-baja-en-calorias-baja-en-grasa-es-6ocHr.jpg'),
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
                          height: 80,
                          width: 180,
                          child: const Center(
                            child: Text('Pasta ligera',
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
                              MaterialPageRoute(builder: (context) => const RecetaPasta()),
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
                  backgroundImage: NetworkImage('https://cheforopeza.com.mx/wp-content/uploads/2019/04/quesadillas-atun.jpg'),
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
                          height: 80,
                          width: 180,
                          child: const Center(
                            child: Text('Quesadillas de atún',
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
                              MaterialPageRoute(builder: (context) => const RecetaQuesa()),
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