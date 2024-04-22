import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Lesson 4'),
        ),
        body: const Column(
          children: [
            Spacer(),
            CustomCardWidget(),
            Spacer(),
            CustomCardWidget(),
            Spacer(),
            CustomCardWidget(),
            Spacer(),
            CustomCardWidget(),
          ],
        ),
      ),
    );
  }
}

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Theme.of(context).colorScheme.inversePrimary,
        elevation: 10,
        margin: const EdgeInsets.all(20),
        shadowColor: Colors.red,
        shape: const BeveledRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          side: BorderSide(color: Colors.black, width: 2),
        ),
        borderOnForeground: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Hello World!',
              style: TextStyle(color: Colors.white),
            ),
            FlutterLogo(size: 100),
          ],
        ),
      ),
    );
  }
}
