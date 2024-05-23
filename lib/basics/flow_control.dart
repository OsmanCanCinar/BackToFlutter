
void main() {
  var count = 8;
  var ct = 0;

  while(ct <= count) {
    print(ct);
    ct++;
  }

  ct = 0;

  do{
    print(ct);
    ct++;
  } while(ct <= count);

  for(ct = 0; ct <= count ; ct++) {
    if (ct.isEven) {
      continue;
      // break;
    }
    print(ct);
  }

  // #1 declare & initialize it.
  int a = 0;
  List<int> list1 = [1, 2, 3];
  print(a);

  // #2 declare it as nullable.
  int? b;
  List<int?> list2 = [1, null, 3];
  print(b);

  // returns int or null and takes nullable int as parameter
  int? controlPoints(int? a) {
    if (a != null && a > 0) {
      return a;
    } else {
      return null;
    }
  }

  for (var i in list2) {
    if (i == null) {
      print('$i. element is null');
    } else {
      print('$i');
    }

    // if it returns null then value will be assigned as false, else it is true.
    bool result = controlPoints(i) == null ? false : true;
    print(result);
  }

  int? c;
  //if null then assign it 2.
  int z = c ?? 2;
  print('z: $z');
}