class CarModel {
  final List<Car> bmw;
  final List<Car> mercedes;
  final List<Car> audi;
  final List<Car> porsche;

  CarModel({
    required this.bmw,
    required this.mercedes,
    required this.audi,
    required this.porsche,
  });

  factory CarModel.fromJson(Map<String, dynamic> json) => CarModel(
        bmw: List<Car>.from(json["bmw"].map((x) => Car.fromJson(x))),
        mercedes: List<Car>.from(json["mercedes"].map((x) => Car.fromJson(x))),
        audi: List<Car>.from(json["audi"].map((x) => Car.fromJson(x))),
        porsche: List<Car>.from(json["porsche"].map((x) => Car.fromJson(x))),
      );
}

class Car {
  final String model;
  final int year;
  final int price;

  Car({
    required this.model,
    required this.year,
    required this.price,
  });

  factory Car.fromJson(Map<String, dynamic> json) => Car(
        model: json["model"],
        year: json["year"],
        price: json["price"],
      );
}
