import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key}) {
    debugPrint('Constructor created.');
  }

  @override
  State<HomeScreen> createState() {
    debugPrint('State is created.');
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    debugPrint('Initstate is worked. ');
  }

  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint('DidUpdateWidget is worked. ');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint('DidChangeDependencies is worked. ');
  }

  @override
  void reassemble() {
    super.reassemble();
    debugPrint('Reassemble is worked. ');
  }

  @override
  void deactivate() {
    super.deactivate();
    debugPrint('Deactivate is worked. ');
  }

  @override
  void dispose() {
    super.dispose();
    debugPrint('Dispose is worked. ');
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('Build is worked. ');
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              debugPrint('SetState is worked. ');
            });
          },
          child: const Text('Click Me'),
        ),
      ),
    );
  }
}
