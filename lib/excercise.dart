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
  String object;
  object = "can";
  print(object);
  print("can");

  // const keyword can only use the value assigned during compile time.
  const String name = "Name";

  // 7.25 but we use it as 7.
  int a = 15;
  a = a ~/ 2;

  // num covers both double and int
  num k = 2.4;
  k = 4;

  // final keyword will be using the latest value assigned during the run time.
  late final int b;

  // while using final, we don't have to specify the variable type. It understands automatically.
  final z = 2;

  if (a == 7) {
    b = 3;
  } else {
    b = 4;
  }

  switch (b) {
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
  print('a = $a, b= $b pi=$pi pi.toInt()= ${pi.toInt()}');
}