import 'package:f_lesson_10/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const CounterWidget());

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int count = 0;

  updateCount({required bool isPlus}) {
    setState(() {
      if (isPlus) {
        count++;
        debugPrint('$count');
      } else if (!isPlus && count > 0) {
        count--;
        debugPrint('$count');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: Builder(builder: (ctx) {
          return FloatingActionButton(
            onPressed: () => Navigator.push(
                ctx,
                MaterialPageRoute(
                  builder: (ctx) => HomeScreen(),
                )),
            child: const Icon(Icons.add),
          );
        }),
        appBar: AppBar(
          title: const Text('Counter App'),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Center(
          child: Text(
            '$count',
            style: Theme.of(context).textTheme.displayMedium,
          ),
        ),
      ),
    );
  }
}
