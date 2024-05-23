import 'user_model.dart';

void main() {
//  #1 Regular Constructor with default, named and nullable parameters.
  //User user1 = User('osman', 12, age: 53, city: 'izmir');
  //User user2 = User('can', 124, age: null, city: null);

  //  #2 Regular Constructor with default and nullable parameters.
  //User user3 = User('osman', 12, 53, 'izmir');
  //User user4 = User('can', 124, null, null);

  //  #3 Syntatic Sugar Constructor with named and nullable parameters.
  User user5 = User('cengiz', 23532, age: 123, city: 'aadasf');
  User user6 = User('ozlem', 510);

  //  #4 Syntatic Sugar Constructor with optional parameters.
  //User user7 = User('cengiz', 23532, 123, 'aadasf');
  //User user8 = User('ozlem', 500);

  //  #5 Constructor with default, required and named parameters.
  //User user9 = User('cengiz', 23532, age: 12, city: 'aadasf');
  //User user10 = User('ozlem', 500, age: 12);

  print(user6.amount.toString());
}