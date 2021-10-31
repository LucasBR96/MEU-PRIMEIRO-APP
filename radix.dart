// ---------------------------------------------------------
// Implementando radix binário em Dart para fins educativos

import 'dart:math';

void main() {
  List<int> lst = [10, 8, 17, 2, 13, 1, 22];
  int foo(dynamic x) => x;
  List<int> rdx = normLst(lst, foo);
  print(lst);
  print(rdx);

  print("");
  radixZip(lst, rdx);
  print(lst);
  print(rdx);
}

List<int> normLst(List baseLst, int Function(dynamic) foo) {
  Iterable<int> resultLst = baseLst.map(foo);
  int m = resultLst.reduce(min);
  return resultLst.map((x) => x - m).toList();
}

void radixZip(List baseLst, List<int> radixValues) {
  //para zipagem e concatenação
  List lst1 = [];
  List lst2 = [];
  List lst;

  // para iterar
  int x;
  dynamic val;
  Map<String, dynamic> m;

  int n = baseLst.length; // lembrando que ambas as listas tem mesmo tamanho
  for (int i = 0; i < n; i++) {
    val = baseLst.elementAt(i);
    x = radixValues.elementAt(i);
    m = Map.fromIterables(['val', 'x'], [val, x]);

    lst = x.isEven ? lst1 : lst2;
    lst.add(m);
  }

  baseLst.clear();
  radixValues.clear();
  lst = lst1 + lst2;
  lst.forEach((entry) {
    baseLst.add(entry['val']);
    radixValues.add(entry['x']);
  });

  //print( baseLst );
}

void binRadixSort(List baseLst, int Function(dynamic) foo) {
  List<int> radixValues = normLst(baseLst, foo);
  for (int i = 0; i < 64; i++) {
    print("");
    print(baseLst);
    print(radixValues);

    radixZip(baseLst, radixValues);
    radixValues = radixValues.map((x) => (x / 2).floor()).toList();
  }
}
