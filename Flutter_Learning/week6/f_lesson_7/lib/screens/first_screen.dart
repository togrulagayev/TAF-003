import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Navigators'),
      ),
      body: ListView(
        children: [
          buildItem(0),
          buildItem(1),
          buildItem(2),
          buildItem(3),
          buildItem(4),
          buildItem(5),
          buildItem(6),
          buildItem(7),
          buildItem(8),
          buildItem(9),
          buildItem(10),
          buildItem(11),
          buildItem(12),
          buildItem(13),
          buildItem(14),
          buildItem(15),
          buildItem(16),
          buildItem(17),
          buildItem(18),
          buildItem(19),
          buildItem(20),
          buildItem(21),
          buildItem(22),
          buildItem(23),
          buildItem(24),
          buildItem(25),
        ],
      ),
    );
  }
}

Widget buildItem(int index) {
  debugPrint('Building item ${index + 1}');
  return Card(
    child: ListTile(
      title: Text('$index'),
      subtitle: Text('$index@gmail.com'),
    ),
  );
}
