// ---------------------------------------------------------
// Implementando radix binário em Dart para fins educativos

void main() {}

List<int> normLst(List baseLst, int Function(List) foo) {
  return [];
}

void radixZip(List baseLst, List<int> radixValues) {}

void updateRadix(List<int> radixValues) {}

void binRadixSort(List baseLst, int Function(List) foo) {
  List<int> radixValues = normLst(baseLst, foo);
  for (int i = 0; i < 64; i++) {
    radixZip(baseLst, radixValues);
    updateRadix(radixValues);
  }
}
