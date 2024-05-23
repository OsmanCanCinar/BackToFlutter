class User {
  late final String name;
  late final int _amount; // Private attribute
  late final int? age;
  late final String? city;
  String? _country;
  String _galaxy;

  // Computed value, it will only be calculated when it is being called. Getter
  int get amount => _amount;

  // Setter
  set amount(int? amount) {
    _amount = amount ?? 0;
  }

  //  #0 Empty Constructor
  //User(){}

  /*
        //  #1 Regular Constructor with default, named and nullable parameters.
  User(String name,  int amount, {int? age, String? city}) {
    this.name = name;
    this._amount = amount;
    this.age = age;
    this.city = city;
  }
  */

  /*
        //  #2 Regular Constructor with default and nullable parameters.
  User(String name,  int amount, int? age, String? city) {
    this.name = name;
    this._amount = amount;
    this.age = age;
    this.city = city;
  }
  */

  //  #3 Syntatic Sugar Constructor with named and nullable parameters.
  // {} -> for named parameters
  User(this._country, this._galaxy, this.name, this._amount, {this.age, this.city});

//  #4 Syntatic Sugar Constructor with optional parameters.
// [] -> for optional parameters, equivalent of int?
//User(this.name, this._amount, [this.age, this.city]);

//  #5 Constructor with default, required and named parameters.
//User(String name, int amount, {required int age, String? city});
}