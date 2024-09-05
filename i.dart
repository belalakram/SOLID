// Interface Segregation Principle

// problem

abstract class Shape {
  double area();
  double perimeter();
}

class Rectangle implements Shape {
  double width;
  double height;

  double area() {
    return width * height;
  }

  double perimeter() {
    return 2 * (width + height);
  }
}

class Circle implements Shape {
  double radius;

  double area() {
    return pi * pow(radius, 2);
  }

  double perimeter() {
    return 2 * pi * radius;
  }
}

// solution
// باختصار هستخدم implements و اعمل كل class لوحده

// CLASS للمساحة
abstract class Area {
  double area();
}

// CLASS للمحيط
abstract class Perimeter {
  double perimeter();
}

// مستطيل: ينفذ المساحة والمحيط
class Rectangle implements Area, Perimeter {
  double width;
  double height;

  double area() {
    return width * height;
  }

  double perimeter() {
    return 2 * (width + height);
  }
}

// دائرة: ينفذ المساحة فقط (المحيط ناقص)
class Circle implements Area {
  double radius;

  double area() {
    return pi * pow(radius, 2);
  }
// تفتقدر تنفيذ دالة perimeter()
}
