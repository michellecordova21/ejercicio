import 'dart:js';

import 'package:flutter/material.dart';
import 'package:ejercicio/json/json.dart';
import 'package:page_transition/page_transition.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  int menuactivo = 0;
  int menuactivo2 = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: encabezado(),
      body:  cuerpo(),  bottomNavigationBar: BottomNavigationBar(
        items: [ 
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
            color: Colors.purple, ),  
            label: ' '  ), 
            BottomNavigationBarItem(
              icon: Icon(Icons.search,
              color: Colors.purple), 
              label: ' '), 
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite,
              color: Colors.purple),
              label: ' '), 
            BottomNavigationBarItem(
              icon: Icon(Icons.person,
              color: Colors.purple), 
              label: ' ')
        ]));
  }
}

cuerpo(){
     
     return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 30, top: 20),
            child: Row(
              children: List.generate(song_type_1.length, (index) {
                var menuactivo=0;
                return Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        menuactivo = index;
                      });
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          song_type_1[index],
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 3),
                        menuactivo == index
                            ? Container(
                                width: 10,
                                height: 3,
                                decoration: BoxDecoration(
                                  
                                    borderRadius: BorderRadius.circular(50)))
                            : Container(),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ),  SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(padding: const EdgeInsets.only(left: 30),
          child: Row(
            children: List.generate(imagenes.length, (index){
              return Padding(
                padding: const EdgeInsets.only(right: 30),
                child: GestureDetector(
                  onTap: (){
                  
                },child: Column(
                  children: [
                    Container(
                      width: 180,
                      height: 180,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(imagenes[index]['img']),
                          fit: BoxFit.cover),
                         // color: Color.fromARGB(255, 227, 77, 22)
                      ),
                      
                    ), SizedBox(
                      height: 40),
                      Text(imagenes[index]['title'],
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),)
                  ],
                ),),
                );
            },
            
            ),
          ),
          ),
          
           
        )  
        

      ]));
    
    
     
}

void setState(Null Function() param0) {

}
encabezado(){
  return AppBar(
      backgroundColor: Colors.amber,
      elevation: 10,
      title: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            "Naturaleza",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Icon(Icons.list_outlined)
        ]),
      ),
    );
  }

