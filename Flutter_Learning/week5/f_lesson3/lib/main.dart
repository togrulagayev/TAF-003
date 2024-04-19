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
          title: const Text('Basic Widgets'),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(20.0),
              // padding: const EdgeInsets.only(top: 30.0, left: 30.0),
              decoration: BoxDecoration(
                color: Colors.indigo,
                border: Border.all(
                  color: Colors.red,
                  width: 3.0,
                ),
                borderRadius: const BorderRadius.only(
                  // BorderRadius.all
                  topLeft: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.yellow,
                    blurRadius: 5.0,
                    spreadRadius: 5.0,
                    offset: Offset(10.0, 10.0),
                  ),
                  BoxShadow(
                    color: Colors.red,
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                    offset: Offset(-10.0, -10.0),
                  ),
                ],
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF11998e),
                    Color(0xFF38ef7d),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                // shape: BoxShape.circle,
              ),
              height: 300,
              width: 300,
              // color: Colors.red,
              // child: Container(
              //   width: 50,
              //   height: 50,
              //   color: Colors.blue,
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
