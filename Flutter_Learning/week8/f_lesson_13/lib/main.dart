import 'package:dio/dio.dart';
import 'package:f_lesson_13/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<ProductModel> products;
  @override
  void initState() {
    products = [model1];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          products = await getProduct();
          setState(() {});
        },
        child: const Icon(Icons.refresh),
      ),
      appBar: AppBar(
        title: const Text('AppBar'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: products.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                final product = products[index];
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                  child: Card(
                    child: Column(
                      children: [
                        Image.network(product.image),
                        Text(product.title),
                        Text(product.description),
                        Text(product.price.toString()),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}

Future<List<ProductModel>> getProduct() async {
  var url = 'https://fakestoreapi.com/productss';

  try {
    var res = await Dio().get(url);

    if (res.statusCode == 200) {
      var data = (res.data as List);
      return data.map((e) => ProductModel.fromJson(e)).toList();
    }
  } on DioException catch (e) {
    Fluttertoast.showToast(
      msg: e.message ?? "Null Error",
    );
  }
  return [];
}
