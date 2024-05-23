void  main() {
  // var's type cannot be changed after initialization
  var stringVariable = "Can";
  //stringVariable = 27;

  // var's type can be changed after decleration
  var genericVariable;
  genericVariable = 27;
  genericVariable = 'a';


  // final can only be assigned once on run time
  const name =  "Çınar ";

  // const is more efficient to use than final
  final fullName = name + "Osman";

  int z = 3;
  double y = 2.1; // double is real numbers
  num k = 4.0; // num is both
  k = 2;

  bool c = z.isEven;

  String a = "a" + c.toString();
  String a1 = "a'";
  String a2 = "a\"";

  String b = 'b';
  String b1 = 'b\\';
  String b2 = r'b\';

  String b3 = 'b\n';
  String b4 = """"
  hi ${c}
  there
   """;

  const list = [1,2,3];
  const set = {1,2,3};
  const map = { "a": 1, "b" : 2, "c": 3};

  dynamic dd;
  Object o;
}