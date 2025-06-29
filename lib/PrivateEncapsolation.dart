void main() {
  BankAccount myAccount = BankAccount(1000);
  myAccount.despote(500);
  print(myAccount.readBalance);
  myAccount.withdraw(200);
  print(myAccount.readBalance);
  myAccount.withdraw(1500.0);
}

class BankAccount {
  double? _balance;
  BankAccount(this._balance);
  double get readBalance {
    return _balance!;
  }

  despote(dAmount) {
    if (dAmount >= 0 && dAmount != null) {
      _balance = _balance! + dAmount;
    } else if (dAmount < 0) {
      print('You entered positive number');
    } else {
      print('Invalid input');
    }
  }

  withdraw(wAmount) {
    if (wAmount <= _balance && wAmount >= 0 && wAmount != null) {
      _balance = _balance! - wAmount;
    } else if (wAmount > _balance) {
      print('You do not have enough balance to withdraw this amount');
    } else if (wAmount < 0) {
      print('You entered positive number');
    } else {
      print('Invalid input');
    }
  }
}
