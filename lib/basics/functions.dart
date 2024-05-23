typedef NamedStringFunction = String Function({required String a, String b});

void main() {

  String name = 'Osman Can';
  String surname = 'Çınar';

  String fullName = stringFunction(name, surname);
  print(fullName);

  String fullNameExpression = stringExpressionFunction(name, surname);
  print(fullNameExpression);

  voidFunction(name, surname);

  optinalParameterFunction(name, surname);
  optinalParameterFunction(name);

  namedParameterFunction(a: name, b: surname);
  namedParameterFunction(a: name);

  // Function reference
  var f = stringFunction;
  f(name, surname);

  // Another usage of Function reference with type annotation
  String Function({required String a, String b}) fun = namedStringFunction;
  fun(a: name,b: surname);
  fun(a: name);

  // Usage with type def
  NamedStringFunction function = namedStringFunction;
  print(function(a: name, b: surname));
  print(function(a: name));

  // Usage with type def
  NamedStringFunction namedStringFun = ({required String a, String b = ''}) {
    return '$a $b';
  };
  print(namedStringFun(a: name, b: surname));
  print(namedStringFun(a: name));
}

String stringFunction(String a, String b) {
  //return a + ' ' + b;
  return '$a $b';
}

String stringExpressionFunction(String a, String b) => '$a $b';

void voidFunction(String a, String b) {
  // print(a + b);
  print('$a $b');
}

// Optional parameter has to be at the end
void optinalParameterFunction(String a, [String b = '']) {
  print('$a $b');
}

// required named parameters with optional
void namedParameterFunction({required String a, String b = ''}) {
  print('$a $b');
}

// required named parameters with optional
String namedStringFunction({required String a, String b = ''}) {
  return '$a $b';
}