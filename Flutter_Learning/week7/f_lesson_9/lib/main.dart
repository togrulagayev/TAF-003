import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _controller = PageController(
    initialPage: 1,
    viewportFraction: 1,
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: FloatingActionButton(
                onPressed: () {
                  _controller.previousPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Easing.emphasizedAccelerate,
                  );
                },
                child: const Icon(Icons.arrow_back),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                _controller.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.slowMiddle,
                );
              },
              child: const Icon(Icons.arrow_forward),
            ),
          ],
        ),
        appBar: AppBar(
          title: const Text('Page View Example'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: PageView(
          // padEnds: false,
          onPageChanged: (value) => debugPrint('Page :$value'),
          controller: _controller,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Container(
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Page 1',
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: Colors.white,
                      ),
                ),
              ),
            ),
            Container(
              color: Colors.red,
              child: Center(
                child: Text(
                  'Page 2',
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: Colors.white,
                      ),
                ),
              ),
            ),
            Container(
              color: Colors.green,
              child: Center(
                child: Text(
                  'Page 3',
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: Colors.white,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
