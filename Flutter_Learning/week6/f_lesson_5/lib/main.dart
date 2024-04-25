import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: const [
            CircleAvatar(
              radius: 100,
              // backgroundColor: Colors.yellow,
              // backgroundImage: AssetImage("assets/images/image2.jpg"),
              // foregroundImage: NetworkImage(
              //   "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
              // ),
              child: Align(
                alignment: Alignment(.46, 1.3),
                child: Icon(
                  Icons.add,
                  size: 100,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ScrollableColumnWidget extends StatelessWidget {
  const ScrollableColumnWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          ScrollableRowWidget(),
          ScrollableRowWidget(),
          ScrollableRowWidget(),
          ScrollableRowWidget(),
          ScrollableRowWidget(),
          ScrollableRowWidget(),
          ScrollableRowWidget(),
          ScrollableRowWidget(),
          ScrollableRowWidget(),
          ScrollableRowWidget(),
          ScrollableRowWidget(),
          ScrollableRowWidget(),
        ],
      ),
    );
  }
}

class ScrollableRowWidget extends StatelessWidget {
  const ScrollableRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      padding: const EdgeInsets.all(8.0),
      physics: const BouncingScrollPhysics(),
      reverse: false,
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.green,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.blue,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.yellow,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.orange,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.purple,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.pink,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.teal,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.white70,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.black,
            width: 100,
            height: 100,
          ),
        ],
      ),
    );
  }
}
