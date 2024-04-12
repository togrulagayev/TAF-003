// ignore_for_file: public_member_api_docs, sort_constructors_first
class Car {
  String brand;
  String model;
  int year;
  static late int engineCount;
  Car({
    required this.brand,
    required this.model,
    required this.year,
  });

  static set setEngineCount(int count) {
    engineCount = count;
  }
}

void main() {
  // car1.brand; car1.model; car1.year; //! Object level datas

  // Car.engineCount; //! Class level data
  Car.setEngineCount = 10;
  print(Car.engineCount);
}
