void main() {
  Fruits alma = Apple(
    isSweet: false,
    color: "Green",
    name: "Alma",
    price: 1.5,
    weight: 0.3,
  );
  alma.display();
  Apple apple = Apple(
    isSweet: true,
    color: "Red",
    name: "Apple",
    price: 2.5,
    weight: 0.2,
  );

  apple.display();
}

abstract class Fruits {
  String? name;
  String? color;
  double? weight;
  double? price;

  void display();
  String hello();
}

class Apple implements Fruits {
  bool isSweet;
  Apple({
    required this.isSweet,
    required this.color,
    required this.name,
    required this.price,
    required this.weight,
  });

  @override
  String? color;

  @override
  String? name;

  @override
  double? price;

  @override
  double? weight;

  @override
  void display() {
    print("Name: $name");
    print("Color: $color");
    print("Price: $price");
    print("Weight: $weight");
    print("Is Sweet: $isSweet");
  }

  @override
  String hello() {
    return 'Hello from Apple!';
  }
}
