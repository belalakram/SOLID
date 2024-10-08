// Open-Closed Principle 

//Problem

class Rectangle {
  double width = 0.0;
  double height = 0.0;

  double area() {
    return width * height;
  }
}

// Solution
// هستخدم abstract و هورث من الاساسي

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

class Circle implements Shape {
  double radius;

  double area() {
    return pi * pow(radius, 2);
  }
}