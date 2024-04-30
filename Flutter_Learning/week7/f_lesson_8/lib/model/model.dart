class ProducModel {
  final int id;
  final String title;
  final int price;
  final String description;
  final String images;

  ProducModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.images,
  });
}

var productList = [
  product1,
  product2,
  product3,
  product4,
  product5,
  product6,
  product7,
  product8,
  product9,
  product10,
];

var product1 = ProducModel(
  id: 1,
  title: 'Product 1',
  price: 100,
  description: 'Description 1',
  images: 'https://i.imgur.com/KeqG6r4.jpeg',
);

var product2 = ProducModel(
  id: 2,
  title: 'Product 2',
  price: 200,
  description: 'Description 2',
  images: 'https://i.imgur.com/mp3rUty.jpeg',
);

var product3 = ProducModel(
  id: 3,
  title: 'Product 3',
  price: 300,
  description: 'Description 3',
  images: 'https://i.imgur.com/cHddUCu.jpeg',
);

var product4 = ProducModel(
  id: 4,
  title: 'Product 4',
  price: 400,
  description: 'Description 4',
  images: 'https://i.imgur.com/cSytoSD.jpeg',
);

var product5 = ProducModel(
  id: 5,
  title: 'Product 5',
  price: 500,
  description: 'Description 5',
  images: 'https://i.imgur.com/ZKGofuB.jpeg',
);

var product6 = ProducModel(
  id: 6,
  title: 'Product 6',
  price: 600,
  description: 'Description 6',
  images: 'https://i.imgur.com/9LFjwpI.jpeg',
);

var product7 = ProducModel(
  id: 7,
  title: 'Product 7',
  price: 700,
  description: 'Description 7',
  images: 'https://i.imgur.com/R3iobJA.jpeg',
);

var product8 = ProducModel(
  id: 8,
  title: 'Product 8',
  price: 800,
  description: 'Description 8',
  images: 'https://i.imgur.com/wXuQ7bm.jpeg',
);

var product9 = ProducModel(
  id: 9,
  title: 'Product 9',
  price: 900,
  description: 'Description 9',
  images: 'https://i.imgur.com/cBuLvBi.jpeg',
);

var product10 = ProducModel(
  id: 10,
  title: 'Product 10',
  price: 1000,
  description: 'Description 10',
  images: 'https://i.imgur.com/QkIa5tT.jpeg',
);
