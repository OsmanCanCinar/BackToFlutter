abstract class IUser {
  final String name;
  final int balance;

  IUser(this.name, this.balance);

  void iUserPrint() {
    print('$name - $balance');
  }
}

class User extends IUser {
  final String name;
  final int balance;

  User(this.name, this.balance) : super(name, balance);
}

class BankUser extends IUser {
  late String date;

  BankUser(String name, int balance, this.date) : super(name, balance);

  void bankUserMethod() {
    print('balance: $balance - date: $date');
  }
}

void main() {
  final User user1 = User('osman', 99);
  user1.iUserPrint();

  final user2 = BankUser('can', 55, '12314');
  user2.bankUserMethod();
  user2.iUserPrint();
}