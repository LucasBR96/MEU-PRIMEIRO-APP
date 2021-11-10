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
// Stateless widgets, quando são alteradas, levam o flutter 
// a chamar a função build novamente, sem ter que rodar o app
// todo de novo. Isso melhora a performance e é chamado de "Hot Reload"
class meuApp extends StatelessWidget {

  // ------------------------------------------------------
  // Inicialializa o app. Não é nescessáriamente um
  // construtor
  @override
  Widget build(BuildContext context) {

    //-----------------------------------------------------
    // Um Scaffold simplesmente serve de base para juntar varias 
    // widgets diferentes.
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
          'Seu primeiro App',
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
