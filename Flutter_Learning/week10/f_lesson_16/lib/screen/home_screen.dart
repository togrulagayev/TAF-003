import 'package:f_lesson_16/providers/all_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(countProvider);
    final title = ref.watch(titleProvider);
    return Scaffold(
      appBar: AppBar(
          title: Text(title),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          leading: IconButton(
            icon: const Icon(Icons.change_circle_outlined),
            onPressed: () => ref.read(titleProvider.notifier).updateTitle(),
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'You have pushed the button this many times:',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Count:  $count',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () => ref.read(countProvider.notifier).decrement(),
                child: const Text('Decrement'),
              ),
              ElevatedButton(
                onPressed: () => ref.read(countProvider.notifier).increment(),
                child: const Text('Increment'),
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(countProvider.notifier).reset(),
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
