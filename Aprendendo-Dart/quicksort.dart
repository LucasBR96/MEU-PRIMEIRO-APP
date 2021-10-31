//------------------------------------------------------------------------------
// Implementando Quicksort recursivo e iterativo em Dart
void main(){}

int partition( List seq , int bottom , int top ){

  int mid = bottom;
  int aux; 
  for ( int k = bottom + 1; k < top; k++ ){
    if( seq[ k ] < seq[ mid ] ){

      //-------------------------------------------------------------------
      // trocando seq[ k ] pelo que ta na frente do Pivo
      // redundante se k = mid + 1
      aux = seq[ mid + 1 ];
      seq[ mid + 1 ] = seq[ k ];
      seq[ k ] = aux;

      // trocando seq[ mid ] por seq[ mid  + 1 ]
      aux = seq[ mid ];
      seq[ mid ] = seq[ mid + 1 ];
      seq[ mid + 1 ] = aux;
      mid += 1; 

    }
  } 
  return mid;
}

void iterQuickSort( List seq ){

  List <int> start = [ 0 ];
  List <int> end   = [ seq.length ];
  int top, mid, bottom;
  
  while ( start.isNotEmpty ){

    top    = end.removeLast();
    bottom = start.removeLast();
    if ( top - bottom < 2 ){
      continue;
    }

    mid = partition( seq , bottom , top );
    start.addAll( [ bottom , mid ] );
    end.addAll( [ mid , top ] ); 
  }
}

void recQuickSort(List seq) {
  if (seq.length <= 1) {
    return;
  }

  List lst1, lst2, lst;
  lst1 = [];
  lst2 = [];
  dynamic pivot = seq.elementAt( 0 );
  seq.sublist( 1 ).forEach( ( x ){
    lst = ( x > pivot ) ? lst2 : lst1;
    lst.add( x );
  });

  recQuickSort( lst1 );
  recQuickSort( lst2 );
  seq.clear();
  lst = ( lst1 + [ pivot ] + lst2 ).toList();
  // plano A
  seq.addAll( lst );
  // plano B
  // lst.forEach( ( x ) => seq.add( x ) );
}
