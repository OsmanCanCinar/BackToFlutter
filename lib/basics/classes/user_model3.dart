abstract class IUser {
  final String name;
  final int balance;

  IUser(this.name, this.balance);

  void printThis() {}
}

// v1
class User implements IUser {
  @override
  // TODO: implement balance
  int get balance => throw UnimplementedError();

  @override
  // TODO: implement name
  String get name => throw UnimplementedError();

  @override
  void printThis() {
    print('Selam');
  }
}

//v2
class BankUser implements IUser {
  final String name;
  final int balance;

  BankUser(this.name, this.balance);

  @override
  void printThis() {
    print(balance);
  }
}

void main() {
  final b_user = BankUser('osman', 12);
  b_user.printThis();

  final user = User();
  user.printThis();
}