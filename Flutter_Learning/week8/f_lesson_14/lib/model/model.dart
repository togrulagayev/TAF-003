class User {
  final int id;
  final int age;
  final String email;
  final String phone;
  final String image;

  User({
    required this.id,
    required this.age,
    required this.email,
    required this.phone,
    required this.image,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        age: json["age"],
        email: json["email"],
        phone: json["phone"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "age": age,
        "email": email,
        "phone": phone,
        "image": image,
      };
}
