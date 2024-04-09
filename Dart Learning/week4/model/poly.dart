void main() {
  Lion lion = Lion(
    type: "Mammal",
    legCount: 4,
    isCarnivorous: false,
    hasMane: true,
  );
  lion as Animal;

  lion.display();
  // lion.eat();

  Fish fish = Fish(
    type: "Fish",
    legCount: 0,
    isCarnivorous: true,
    hasGills: true,
  );
  fish.display();
  // fish.eat("Fish");
}

class Animal {
  String type;
  int legCount;
  bool isCarnivorous;

  Animal({
    required this.type,
    required this.legCount,
    required this.isCarnivorous,
  });

  void display() {
    print("Type: $type");
    print("Leg Count: $legCount");
    print("Is Carnivorous: $isCarnivorous");
  }

  void eat(String name) {
    isCarnivorous
        ? print("$name is eating meat")
        : print("$name is eating grass");
  }
}

class Lion extends Animal {
  bool hasMane;
  Lion({
    required this.hasMane,
    required super.type,
    required super.legCount,
    required super.isCarnivorous,
  });

  @override
  void display() {
    super.display();
    print("Has Mane: $hasMane");
  }
}

class Fish extends Animal {
  bool hasGills;
  Fish({
    required this.hasGills,
    required super.type,
    required super.legCount,
    required super.isCarnivorous,
  });

  @override
  void display() {
    super.display();
    print("Has Gills: $hasGills");
  }

  @override
  void eat(String name) {
    super.eat(name);
    print("$name is eating fish food");
  }
}
