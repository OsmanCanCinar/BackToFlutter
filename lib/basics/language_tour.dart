import 'package:flutter/material.dart';

void main() {
  print("can");
  print("can".isNotEmpty);
  print("can".runtimeType);
  print("can".hashCode);
  print("can".isEmpty);
  print("can".characters);
  print("can".codeUnits);
  print("can".length);
  print("can" + "cinar");
  String name;
  name = "can";
  print(name);
  print("can");

  // const keyword can only use the value assigned during compile time.
  const String text = "Name";

  // 7.25 but we use it as 7.
  int first = 15;
  first = first ~/ 2;

  // num covers both double and int
  num second = 2.4;
  second = 4;

  // final keyword will be using the latest value assigned during the run time.
  late final int third;

  // while using final, we don't have to specify the variable type. It understands automatically.
  final forth = 2;

  if (first == 7) {
    third = 3;
  } else {
    third = 4;
  }

  switch (third) {
    case 5:
      print('5');
      break;
    case 4:
      print('4');
      break;
    case 3:
      print('3');
      break;
    case 2:
    case 1:
      print('no');
      break;
    default:
      print('default');
  }

  double pi = 3.14;
  print('a = $first, b= $third pi=$pi pi.toInt()= ${pi.toInt()}');

  final List<int> listOfPositiveIntegers = [1,2,3,4];
  List<int> listOfNegativeIntegers = [-4,-3,-2,-1];

  listOfPositiveIntegers.add(5);
  listOfPositiveIntegers.insert(0,0);
  print(listOfPositiveIntegers);

  listOfNegativeIntegers.shuffle();
  print(listOfNegativeIntegers);

  listOfNegativeIntegers.reversed.toList();

  // too hard to control, avoid it!
  List<dynamic> mixedList = [1, 'a', true];

  List<String> namesList = ['osman', 'can', 'çınar'];

  //use this instead
  print(namesList.contains('osman'));
  print(namesList.contains('osmen'));

  //looks good but more complicated!
  for (var i in namesList) {
    if (i == 'can') {
      print('can');
    }
  }

  // ** Optional Parameter **
  void exampleFunction(int a, {int b = 10, required int c}) {
    print('a: $a + b: $b + c: $c = ${a + b + c}');
  }

  exampleFunction(1, b: 20, c: 6);
  exampleFunction(1, c: 6);

  Map<String, int> users = {'osman': 1997, 'ozlem': 1970};

  for (var item in users.keys) {
    print('${item} - ${users[item]}');
  }

  for (var i = 0; i < users.length; i++) {
    print('${users.keys.elementAt(i)} - ${users.values.elementAt(i)}');
  }

  final Map<String, List<int>> list = {
    'can': [10, 20, 30]
  };

  list['cengiz'] = [40, 50, 60];

  for (var item in list.keys) {
    int res = 0;
    for (var point in list[item]!) {
      if (point < 10) {
        print('cant to cont');
        break;
      } else {
        res += point;
      }
    }
    print('$item -> $res');
  }

}