import 'package:flutter/material.dart';

void main(){
  f2();
}

void f1() => runApp(
  
  //-----------------------------------------------------
  // App "cru". Uma tábula rasa para botar varios elementos
  // do google diferentes. Nesse caso o app não vai ter nenhum
  // enfeite, tipo um html sem CSS.
   MaterialApp(

    //Abertura do app
    home:Text( "Hello, world." ),

  )
);

void f2() => runApp(
  
  //-----------------------------------------------------
  // Aprendendo Scaffolds.
   MaterialApp(

     home:Scaffold(

       //Barra no topo do App
       appBar: AppBar(
         title: Text( 'Hello, World' ),
         centerTitle: true,
         backgroundColor: Colors.blue,
         foregroundColor: Colors.red,
       ),

       // ---------------------------------------------------
       // centro do App. O widget 'Center' centraliza todos os
       // widgets aninhados dentro de si
       body: Center( 
         child: Text( 'meu primeiro app'),
       )
     ),

  )
);


