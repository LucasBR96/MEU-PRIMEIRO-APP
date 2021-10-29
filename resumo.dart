void main() {
  //hello();
  //tipos();

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

void tipos() {
  // inteiros
  int idade = 24;
  print(idade);

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
}

int maxAscDiff(List<int> seq) {
  //------------------------------------------------------------
  // dado um vetor V com n inteiros não negativos, achar o maior
  // valor de V[ j ] - V[ i ] tal que i <= j < n

  int minSoFar, maxDiff, x;
  minSoFar = 100000000000000; // não sei maxInt ainda
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
