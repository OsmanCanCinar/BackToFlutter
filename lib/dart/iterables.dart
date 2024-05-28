void main() {
  final List<int> l = [1, 2, 3];
  final Set<int> s = {1, 2, 3};
  final Map<int, int> m = { 1:1, 2:2, 3:3};

  final Iterable<int> li = l;
  final Iterable<int> si = s;
  final Iterable<MapEntry<int, int>> mei = m.entries;
  final Iterable<int> mki = m.keys;
  final Iterable<int> mvi = m.values;

  for(final e in li) {
    print(e);
  }

  print(li.first);
  print(li.last);
  print(li.length);

  print(li.contains(4));

  li.forEach((element) {
    print(element);
  });

  li.toList();
  s.toList();
}