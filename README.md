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
