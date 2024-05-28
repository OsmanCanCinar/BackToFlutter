void main() {
  final iterable = {1, 2, 3, 4, 5, 6, 7, 8, 9, 0};
  print(iterable);
  print(iterable.first);
  print(iterable.last);
  print(iterable.firstWhere((element) => element % 4 == 0));
  
  if (iterable.any((element) => element % 11 == 0)) {
    print(true);
  }

  if (iterable.every((element) => element >= 0)) {
    print(false);
  }

  iterable.fold(0, (previousValue, element) => previousValue + element);

  iterable.where((element) => element < 4);
  
  iterable.map((e) => '$e ');
}