void main() {
  hello();
  inteiros();
  strings();
  listas();
  conjuntos();
}

void hello() {
  //-------------------------------------------------------------
  // for loop parecido com C
  for (int i = 0; i < 5; i++) {
    //----------------------------------------------------------
    // casting para texto parecido com Javascrpit
    print('hello ${i + 2}');
  }
}

void inteiros() {
  
  //-----------------------------------------------------------------
  // inteiros são em dois tipos. 'ints' e 'bigInts', com o primeiro
  // tendo 64 bits de tamanho no formato complemento de dois. O outro
  // segundo a documentação, 'aceita valores arbitrários'
  
  //ints
  int x = 24;
  int y = 28;
  int z = -3;
    
  
  //----------------------------------------------------------------
  // Metodos
  
  // módulo
  print( z.abs() );
  
  // minimo divisor comum
  print( x.gcd( y ) );
  
  // retorna um inteiro equivalente aos 3 menores digitos significativos
  // na forma binária
  print( x.toSigned( 3 ) );   // ultimo bit como sinal
  print( x.toUnsigned( 3 ) ); // sempre como positivo
  
  //----------------------------------------------------------------
  // operadores binários
  
  // shift com sinal
  print( x >> 2 ); // para a direita
  print( x << 2 ); // para a esquerda
  
  // shift sem sinal
  // print( x >>> 2 ); // para a direita
  
  // Ou exclusivo
  print( x ^ y );
  
  // Ou
  print( x | y );

  // E
  print( x & y );
  
  //----------------------------------------------------------------
  // operadores aritiméticos
  
  //divisão retorna double
  print( x/y );
}

void strings(){
  // strings
  String nome = "Lucas";
  print(nome);

  // booleanos
  bool bonito = true;
  print(bonito);

  //-------------------------------------------------------------
  // Dart é uma linguagem de programação com tipagem estática, então
  // o codigo abaixo da erro.
  // idade = '25'; // aniversario

  // se você quiser mudar o tipo da variável, como numa linguagem com
  // tipagem dinâmica, vc tem que usar o tipo 'dynamic'
  dynamic x = "Lívia";
  print(x);
  x = 31;
  print(x);
}

void listas() {
  //-----------------------------------------------------------------
  // O iteravel padrão do Dart é o 'List', e é parecido com o python
  List lst_1 = ['pedro', 'maria', 'joana'];
  print(lst_1);

  // adicionando
  lst_1.add('joao');
  print(lst_1);

  // removendo
  lst_1.remove('maria');
  print(lst_1);

  // tamanho ( atributo )
  print(lst_1.length);

  // indexação
  print(lst_1.elementAt(0));
  print(lst_1.elementAt(1));

  //---------------------------------------------------------------
  // O tipo default de cada List em Dart é 'dynamic'. Então é possível
  // adicionar um valor que não seja String em lst_1
  lst_1.add(45);
  print(lst_1);

  //---------------------------------------------------------------
  // Isso, entretanto, não é uma boa pratica. É recomendado declarar
  // o tipo aceito pela lista. 'lst_2', abaixo, só aceita 'int'.
  List<int> lst_2 = [25, 55, 81];
  lst_2.add(23); // funciona
  // lst_2.add( 'carro' ); //erro
}

void conjuntos() {
  // ----------------------------------------------------------------------
  // 'Set' é o nome que Dart da para um conjunto, I.E uma coleção de
  // elementos distintos. Assim como Python, conjuntos são implementados
  // através de Tabelas Hash.
  Set<int> seq = Set.from([10, 20, 10, 15]);
  print(seq);

  //-----------------------------------------------------------------------
  // Atributos interessantes
  print( seq.first );   // primeiro elemento
  print( seq.last  );   // ultimo elemento
  print( seq.length );  // quantos tem
  print( seq.isEmpty ); // vazio?
  
  //-----------------------------------------------------------------------
  // Metodos
  print( " " );
  
  // adicionar novo elemento
  seq.add( 8 );
  print( seq );
  
  // adicionar valores de um outro iteravel
  seq.addAll( [ 23, 48 , 17 ] );
  print( seq );
  
  // verifica se o elemento dado existe
  print( seq.contains( 7 ) );
  print( seq.contains( 10 ) );
  
  // testes lógicos.
  bool test_1( x ) => ( x%5 == 0 ); // testa se o numero é divisível por 5.
  print( seq.any( test_1 ) );       // ao menos um elemento passa por 'test1'
  print( seq.every( test_1 ) );     // todos passam por test1
  
  // ----------------------------------------------------------------------
  // Ao contrário de Python, em Dart conjuntos são estruturas ordenáveis, com os
  // elementos organizados na ordem que foram adicionados, então:
  // print( " " );
  // for( int i = 0 ; i < seq.length ; i++ ){
  //   print('${i} ${seq.elementAt(i)}');
  // }
}

int maxAscDiff(List<int> seq) {
  //------------------------------------------------------------
  // dado um vetor V com n inteiros não negativos, achar o maior
  // valor de V[ j ] - V[ i ] tal que i <= j < n

  int minSoFar, maxDiff, x;
  minSoFar = 99999999999999999; // não sei maxInt ainda
  maxDiff = -1;

  for (int i = 0; i < seq.length; i++) {
    x = seq.elementAt(i);

    if (x < minSoFar) {
      minSoFar = x;
      continue;
    }

    if (x - minSoFar > maxDiff) {
      maxDiff = x - minSoFar;
    }
  }

  return minSoFar;
}

