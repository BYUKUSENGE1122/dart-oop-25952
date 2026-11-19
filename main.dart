class BusCard {
  String _owner = '';
  int _balance = 0;

  // Constructor
  BusCard(String owner, int balance) {
    _owner = owner;
    _balance = balance;
  }

  // Getter for owner
  String get owner {
    return _owner;
  }

  // TODO 1: Getter for balance
  int get balance {
    return _balance;
  }

  // Setter for owner
  set owner(String newName) {
    if (newName.length < 3) {
      print('Error: name too short');
    } else {
      _owner = newName;
    }
  }

  // Method to show card information
  void showInfo() {
    print('Owner: $_owner | Balance: $_balance RWF');
  }

  // TODO 2: Method to top up balance
  void topUp(int amount) {
    if (amount >= 500 && amount <= 50000) {
      _balance = _balance + amount;
      print('Topped up $amount RWF');
    } else {
      print('Error: top-up must be 500 to 50000 RWF');
    }
  }

  // TODO 3: Method to pay bus fare
  void pay(int fare) {
    if (fare > _balance) {
      print('Card declined');
    } else {
      _balance = _balance - fare;
      print('Paid $fare RWF');
    }
  }
}

class StudentCard extends BusCard {
  int _discount;

  // Constructor
  StudentCard(String owner, int balance, int discount)
    : _discount = discount,
      super(owner, balance);

  // Override showInfo method
  @override
  void showInfo() {
    super.showInfo();
    print('Student discount: $_discount%');
  }

  // TODO: Override pay method
  @override
  void pay(int fare) {
    int off = fare * _discount ~/ 100;

    print('Student discount: $off RWF');

    super.pay(fare - off);
  }
}

void main() {
  // Create a normal bus card
  BusCard myCard = BusCard('Satto BYUKUSENGE', 1520);

  // Test the owner setter with an invalid name
  myCard.owner = 'Al';

  // Set the correct owner name
  myCard.owner = 'Satto BYUKUSENGE';

  // Display card information
  myCard.showInfo();

  // Test top-up
  myCard.topUp(100);
  myCard.topUp(2000);

  // Pay bus fare twice
  myCard.pay(252);
  myCard.pay(252);

  // Display updated information
  myCard.showInfo();

  // Create a student card
  StudentCard student = StudentCard('Satto BYUKUSENGE', 1520, 12);

  // Test student payment
  student.pay(252);

  // Display student card information
  student.showInfo();
}
