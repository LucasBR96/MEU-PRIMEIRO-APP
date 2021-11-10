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

    //home: meuApp()
    home: outroApp()

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
        child : f3(),
        // child : f4(),
      ),

      // Botao que fica no cantinho.
      floatingActionButton: FloatingActionButton(
        onPressed: () => { print("nevando carai")},
        // child : Text( 
        //   'Click',
        //   style : TextStyle(
        //     fontSize: 10, 
        //   ) 
        // ),

        child: f5(),
        hoverColor: Colors.red,
        backgroundColor: Colors.blueGrey[300],
      ),
    );
    
  }
}

Text f3() => Text( 
  'Seu primeiro App',
  style : TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    fontFamily : 'indieFlower' 
  )
);


Image f4() => Image(
  
  // Imagens da internet
  // image: NetworkImage( 'https://images.unsplash.com/photo-1636554613531-89ffb1592ec3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=687&q=80' ),

  //Imagens do proprio computador
  image : AssetImage('images/forest.jpg'),
  
);

// Icones não são exatamente imagens. 
Icon f5() => Icon(
  Icons.ac_unit_sharp,
  color: Colors.white,
);


class outroApp extends StatelessWidget {
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
      // Aprendendo a mexer com Containers
      body : Container(
        padding: EdgeInsets.symmetric(
          vertical:10,
          horizontal: 20
        ),
        color: Colors.grey,
        child: Text( 'hello' ),
        margin: EdgeInsets.symmetric(
          vertical:30,
          horizontal: 30
        ),
      ),

      // Botao que fica no cantinho.
      floatingActionButton: FloatingActionButton(
        onPressed: () => { print("nevando carai")},
        child : Text( 
          'Click',
          style : TextStyle(
            fontSize: 10, 
          ) 
        ),
        backgroundColor: Colors.blueGrey[300],
      ),
    );
    
  }
}