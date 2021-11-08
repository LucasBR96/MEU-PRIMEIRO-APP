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
  //
  // Um Scaffold simplesmente serve de base para juntar varias 
  // widgets diferentes.
   MaterialApp(

    home: meuApp()

  )
);

// --------------------------------------------------
// A diferença entre widgets 'stateless' e 'stateful' é o 
// fato que o primeiro tem dados estárico. Ou seja, cores,
// texto e divs não podem mudar sem que o app seja recarrega.
// O segundo, então, é dinâmico, com dados mutáveis
//
class meuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //Barra no topo do App
      appBar: AppBar(
        title: Text( 'Hello, World' ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[300],
        foregroundColor: Colors.red,
      ),

      // ---------------------------------------------------
      // centro do App. O widget 'Center' centraliza todos os
      // widgets aninhados dentro de si
      body : Center( 
        child : Text( 
          'meu primeiro App',
          style : TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily : 'indieFlower' 
          )
        ),
      ),

      // Botao que fica no cantinho.
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child : Text( 
          'Click',
          style : TextStyle(
            fontSize: 10, 
          ) 
        ),
        hoverColor: Colors.red,
        backgroundColor: Colors.blueGrey[300],
      ),
    );
    
  }
}
