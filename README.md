# dart-oop-25952

OOP individual assignment solutions using Dart.

## Part 2: StudentCard

The StudentCard class extends the BusCard class using inheritance.

It has a private discount variable and overrides the showInfo() and pay() methods.

The super keyword is used to access the parent class constructor and methods.

### Why use ~/ instead of /?

The / operator returns a double value, while ~/ performs integer division and returns an int. We use ~/ because the discount amount is stored as an integer.

## Part 3: Main Program

My registration number is 25952.

- D = 52
- L = 2
- Starting balance = 1520 RWF
- Bus fare = 252 RWF
- Student discount = 12%

### Program Output

```text
Error: name too short
Owner: Satto BYUKUSENGE | Balance: 1520 RWF
Error: top-up must be 500 to 50000 RWF
Topped up 2000 RWF
Paid 252 RWF
Paid 252 RWF
Owner: Satto BYUKUSENGE | Balance: 3016 RWF
Student discount: 30 RWF
Paid 222 RWF
Owner: Satto BYUKUSENGE | Balance: 1298 RWF
Student discount: 12%
```

## Part 4: Bug Hunt — Identification and Solutions

The original `bug_hunt.dart` program contained five bugs that needed to be identified and corrected. I reviewed the code, examined the Dart error messages, and applied the appropriate object-oriented programming concepts to fix each problem.

### Bug 1: Uninitialized Fields

**Original code:**

```dart
String _brand;
int _battery;
```

**Problem:** Both fields are non-nullable. Dart requires non-nullable fields to have initial values before they can be used.

**Solution:** I initialized both fields with default values.

```dart
String _brand = '';
int _battery = 0;
```

### Bug 2: Parent Constructor Not Called

**Original code:**

```dart
SmartPhone(String brand, int battery, String system) {
  _system = system;
}
```

**Problem:** `SmartPhone` extends `Phone`, but its constructor does not call the parent constructor. As a result, the parent class is not initialized with the supplied brand and battery values.

**Solution:** I used `super(brand, battery)` to call the parent constructor.

```dart
SmartPhone(String brand, int battery, String system)
    : super(brand, battery) {
  _system = system;
}
```

### Bug 3: Incorrect Use of @override

**Original code:**

```dart
@override
void restart() {
  print('Restarting $_system');
}
```

**Problem:** The `Phone` parent class does not contain a `restart()` method. Therefore, the child class cannot override a method that does not exist in the parent class.

**Solution:** I removed the `@override` annotation but kept the `restart()` method.

```dart
void restart() {
  print('Restarting $_system');
}
```

### Bug 4: Missing Battery Setter

**Original code:**

```dart
p.battery = 100;
```

**Problem:** The `Phone` class originally had a getter for battery but did not have a setter. A getter allows us to read a value, while a setter allows us to update it.

**Solution:** I added a battery setter that accepts values between 0 and 100. This prevents invalid battery values from being assigned.

```dart
set battery(int value) {
  if (value >= 0 && value <= 100) {
    _battery = value;
  }
}
```

### Bug 5: Incorrect Getter Access

**Original code:**

```dart
print(p.battery());
```

**Problem:** `battery` is a getter, not a method. Getters do not require parentheses when accessed.

**Solution:** I removed the parentheses.

```dart
print(p.battery);
```

### Line That Looks Wrong but Is Correct

**Original code:**

```dart
Phone p = new Phone('Tecno', 50);
```

**Explanation:** This line is correct because the `new` keyword is valid Dart syntax for creating an object. Although it is optional in modern Dart, it does not cause an error. Therefore, I kept this line unchanged.

### Final Program Output

After identifying and correcting the five bugs, I executed the program successfully.

```text
100
```

**Conclusion:** All five bugs were corrected successfully. The program now initializes fields correctly, uses inheritance and constructors properly, validates battery values through a setter, and accesses the getter correctly. The final output matches the assignment requirement.

### Part 5: Output Prediction.

// My Predicted output:
1
5

//OverView About my prediction output:
Bag a starts with 0 items. Calling add() increases it to 1. Setting it to -5 is rejected because the setter accepts only values greater than or equal to 0. Therefore, it prints 1.

BigBag b overrides add() and calls super.add() twice. Calling b.add() twice increases the items to 4. Adding another 1 through the setter gives 5. Therefore, it prints 5.

### Part 5: Real Output and Comparison

**Actual Output:**

```text
1
5
```

**Was my prediction correct?**

Yes, my prediction was correct. The actual output matches my predicted output exactly.

The first output is `1` because the Bag setter rejects negative values. The second output is `5` because each call to `BigBag.add()` increases the number of items by 2, and the final setter increases the value by another 1.

This confirms that I correctly understood inheritance, method overriding, the `super` keyword, and setter validation in Dart.
