import 'package:flutter/material.dart';
import '../pages/menu/platillos/comidas/recetajitomate.dart';
import '../pages/menu/platillos/comidas/recetalambre.dart';
import '../pages/menu/platillos/comidas/recetapechuga.dart';
import '../pages/menu/platillos/comidas/recetapollomexicana.dart';
import '../pages/menu/platillos/comidas/recetasalmon.dart';

class MenuComida extends StatefulWidget {
  const MenuComida({super.key});

  @override
  State<MenuComida> createState() => _MenuComidaState();
}

class _MenuComidaState extends State<MenuComida> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.amber[300],
        title: const Text('Comidas', style: TextStyle(color: Colors.black),),
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
                  backgroundImage: NetworkImage('http://www.notiactual.com/wp-content/uploads/2017/09/pollo-con-crema.jpg'),
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
                            child: Text('Pechuga con crema',
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
                              MaterialPageRoute(builder: (context) => const RecetPechugaCrema()),
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
                  backgroundImage: NetworkImage('https://cdn7.kiwilimon.com/clasificacion/95/95.jpg'),
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
                            child: Text('Salmon rice',
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
                              MaterialPageRoute(builder: (context) => const RecetSalmon()),
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
                  backgroundImage: NetworkImage('https://d1kxxrc2vqy8oa.cloudfront.net/wp-content/uploads/2020/08/17202627/RFB-1007-4-polloalamexicana.jpg'),
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
                            child: Text('Pollo a la mexicana',
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
                              MaterialPageRoute(builder: (context) => const RecetPollo ()),
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
                  backgroundImage: NetworkImage('https://farm6.staticflickr.com/5203/13520915855_124af34e31_z.jpg'),
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
                            child: Text('Alambre de lentejas',
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
                              MaterialPageRoute(builder: (context) => const RecetAlambre()),
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
                  backgroundImage: NetworkImage('https://i.pinimg.com/originals/b7/cc/c1/b7ccc1c60e4b16e2bb26f9ba1ebde10a.jpg'),
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
                            child: Text('Jitomate relleno',
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
                              MaterialPageRoute(builder: (context) => const RecetaJitomate()),
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