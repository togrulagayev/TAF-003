import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Bar'),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (value) {
            if (value == 0) {
              _currentIndex = value;
              debugPrint('Home');
            } else if (value == 1) {
              _currentIndex = value;
              debugPrint('Search');
            } else if (value == 2) {
              _currentIndex = value;
              debugPrint('Profile');
            } else {}
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
