// --------------------------------------------------------------------------
// Seja 'B' uma lista de inteiros finita, tal que B[ i ] >= 1 para todo i.
// Ache 'A' onde 1 <= A[ i ] <= B[ i ] e que a soma de todos os valores para
// | A[ i ] - A[ i - 1 ] | seja a maior possível.
//
// Solução:
//
// Para maximizar a soma, A[ i ] == 1 ou A[ i ] == B[ i ], para todo i. O 'x' da
// questão é saber qual o valor adequado para cada i. Para resolver o problema cria-se então
// tres listas: F , H , C
// 
// F[ i ] -> maior soma possível com A[ i ] == 1
// H[ i ] -> maior soma possível com A[ i ] == B[ i ]
// C[ i ] -> maior soma possível, independente de A[ i ]
// 
// Assim é verdade que:
// 1 - C[ i ] = max( F[ i ] , H[ i ] )
// 2 - F[ i ] = max( H[ i - 1 ] + | B[ i - 1 ] - 1 | , F[ i - 1 ] )
// 3 - H[ i ] = max( | B[ i ] - 1 | + F[ i - 1 ] , H[ i - 1 ] + | B[ i ] - B[ i - 1 ] | )

// import 'dart:math';

// void main( ){
//   List B = [ 28 , 129 , 17 , 12 , 1 , 33 , 12 , 5 , 1 ];
// }

// int maxSherlock( List <int> B ){

//   int n =  B.length;
//   List <int> F , H, C;
//   F = List.filled( n, 0 );
//   H = List.filled( n, 0 );
//   C = List.filled( n, 0 );
//   for( int i = 1 ; i < n; i++ ){
//     F[ i ] = max( H[ i - 1 ] + ( B[ i - 1 ] - 1 ).abs() , F[ i - 1 ] );
//     H[ i ] = max( ( B[ i ] - 1 ).abs() + F[ i - 1 ], H[ i - 1 ] + ( B[ i ] - B[ i - 1 ] ).abs() );
//     C[ i ] = max( F[ i ] , H[ i ] );
//   }
  
//   List <int> A = [];
//   for( int i = 0; i < n; i++ ){}

// }