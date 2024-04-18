import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.orange,
      title: 'Example App',
      darkTheme: ThemeData.dark(),
      // theme: ThemeData.light,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Example App',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.white,
          leading: const Icon(
            Icons.account_circle_outlined,
            size: 40.0,
            color: Colors.red,
          ),
          actions: const [
            Icon(Icons.refresh, color: Colors.blue),
            Icon(Icons.shopping_bag),
            Icon(Icons.favorite),
          ],
          // leadingWidth: 130,
          actionsIconTheme:
              const IconThemeData(size: 30.0, color: Colors.green),
          elevation: 3,
          shadowColor: Colors.pink,
          titleSpacing: 100.0,
          surfaceTintColor: Colors.yellow,
          toolbarHeight: kToolbarHeight,
          systemOverlayStyle: const SystemUiOverlayStyle(
            // statusBarBrightness: Brightness.light,
            statusBarColor: Colors.purple,
            systemNavigationBarColor: Colors.black,
            systemNavigationBarIconBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.dark,
            systemNavigationBarDividerColor: Colors.blue,
          ),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: Center(
              child: Text(
                'Bottom App Bar',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          toolbarOpacity: 0.9,
        ),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
