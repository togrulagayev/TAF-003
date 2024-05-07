import 'dart:convert';

List<ProductModel> productModelFromJson(String str) => List<ProductModel>.from(
    json.decode(str).map((x) => ProductModel.fromJson(x)));

String productModelToJson(List<ProductModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String image;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json["id"],
        title: json["title"],
        price: json["price"]?.toDouble(),
        description: json["description"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "image": image,
      };
}

ProductModel model1 = ProductModel(
  id: 1,
  title: 'Title 1',
  price: 001,
  description: 'Description 1',
  image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
);

ProductModel model2 = ProductModel(
  id: 2,
  title: 'Title 2',
  price: 002,
  description: 'Description 2',
  image:
      "https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg",
);
