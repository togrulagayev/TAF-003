import 'package:f_lesson_8/model/model.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Grid View Example'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: GridView.builder(
          itemCount: productList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisExtent: 100,
          ),
          itemBuilder: (context, index) {
            var product = productList[index];
            debugPrint('Index: $index');
            return Card(
              child: ListTile(
                title: Text(product.title),
                subtitle: Text(product.description),
                leading: Image.network(product.images),
                trailing: Text('\$${product.price}'),
              ),
            );
          },
        ),
      ),
    );
  }
}
