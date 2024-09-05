// (Liskov Substitution Principle - LSP

// problem


class Rectangle {
  double width;
  double height;

  double area() {
    return width * height;
  }
}

class Square extends Rectangle {
  double side;

  @override
  double set width(double value) => side = value;

  @override
  double set height(double value) => side = value;
}

// Solution
// عندي مشكله ف تداخل مربع مع مستطيل احلها بعمل abstract class لل اب و يولاثو منه


abstract class Shape {
  double area();
}

class Rectangle implements Shape {
  double width;
  double height;

  double area() {
    return width * height;
  }
}

class Square implements Shape {
  double side;

  double area() {
    return pow(side, 2);
  }
}